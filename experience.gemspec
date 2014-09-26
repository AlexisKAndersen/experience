# coding: utf-8
features = File.expand_path('../features', __FILE__)
$LOAD_PATH.unshift(features) unless $LOAD_PATH.include?(features)
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "experience"
  spec.version       = Experience::VERSION
  spec.authors       = ["Dane Andersen"]
  spec.email         = ["dane.andersen@gmail.com"]
  spec.summary       = %q{Test the user experience}
  spec.description   = %q{Test applications for the user experience.
This is an implementation of the User Interaction testing pattern.}
  spec.homepage      = "https://github.com/daneandersen/experience"
  spec.license       = "MIT"

  spec.rubyforge_project = "experience"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "cucumber", "~> 1.3"
end
