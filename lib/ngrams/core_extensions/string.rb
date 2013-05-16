# encoding: utf-8

class String

  def ngrams(n = 1, options = {})
    split_char = options.fetch(:split_char, ' ')
    is_cjk_string = contains_cjk?
    tokens = is_cjk_string ? self.split(//u) : self.split(split_char)
    if tokens.size <= n
      self
    else
      is_cjk_string ? tokens.each_cons(n).map(&:join) : tokens.each_cons(n).map{|cons| cons.join(split_char)}
    end
  end

  private

    def contains_cjk?
      !!(self =~ /\p{Han}|\p{Katakana}|\p{Hiragana}|\p{Hangul}/)
    end

end