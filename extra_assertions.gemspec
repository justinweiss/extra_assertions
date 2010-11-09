$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "extra_assertions"
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Justin Weiss"]
  s.email       = ["justin@uberweiss.org"]
  s.homepage    = "http://github.com/justinweiss/extra_assertions"
  s.summary     = %q{Some simple extra rails assertions}
  s.description = %q{There's a few blocks of code I had to write in tests over and over again. To save time and effort, I made them assertions. These are the ones I came up with so far.}

  s.files       = Dir['lib/**/*.rb'] + Dir['test/**/*.rb']
  s.test_files  = Dir.glob('test/*_test.rb')

  s.require_paths = ["lib"]
end
