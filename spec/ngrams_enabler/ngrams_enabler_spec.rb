#encoding: UTF-8
require 'spec_helper'

describe String do

  let(:cjk_string){"これは日本語"}
  let(:english_string){"this string is in english"}

  describe "#ngrams" do

    context "not CJK" do

      it "should return the proper default ngrams" do
        ngrams = english_string.ngrams
        ngrams.should eq(english_string.split(" "))
      end

      it "should allow me to set higher n" do
        english_string.ngrams(2).should eq(['this string', 'string is', 'is in', 'in english'])
      end

    end

    context "CJK string" do

      it "should return the proper default ngrams" do
        ngrams = cjk_string.ngrams
        ngrams.should eq(%w[こ れ は 日 本 語])
      end

      it "should allow me to set higher n" do
        cjk_string.ngrams(2).should eq(%w[これ れは は日 日本 本語])
      end

    end

  end

end