Gem::Specification.new do |s|
  s.name        = 'experience'
  s.version     = '0.0.0'
  s.platform = Gem::Platform::RUBY
  s.date        = '2014-09-12'
  s.summary     = "Test the user experience"
  s.description = "Test applications for the user experience. "\
                  "This is an implementation of the User Interaction testing pattern."
  s.authors     = ["Dane Andersen"]
  s.email       = ['dane.andersen@gmail.com']
  s.homepage    = "https://github.com/daneandersen/experience"
  s.license       = 'MIT'

  s.rubyforge_project = "experience"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end