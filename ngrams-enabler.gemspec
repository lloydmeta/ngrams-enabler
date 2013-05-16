Gem::Specification.new do |gem|
    gem.name        = %q{ngrams-enabler}
    gem.version = "0.0.1"
    gem.date = %q{2013-05-16}
    gem.authors     = ["Lloyd Meta"]
    gem.email       = ["lloydmeta@gmail.com"]
    gem.homepage    = "http://github.com/lloydmeta/ngrams-enabler"
    gem.description = %q{A simple way of getting ngrams out of any given String object. Supports CJK (Chinese, Japanese, Korean) as well as alphabet based languages.}
    gem.summary     = gem.description

    gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
    gem.files         = `git ls-files`.split("\n")
    gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
    gem.require_paths = ["lib"]

    gem.add_development_dependency 'rake'
    gem.add_development_dependency 'rspec'
end