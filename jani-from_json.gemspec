# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jani/from_json/version'

Gem::Specification.new do |spec|
  spec.name          = "jani-from_json"
  spec.version       = Jani::FromJson::VERSION
  spec.authors       = ["Ohno Shin'ichi"]
  spec.email         = ["ohno@cookpad.com"]
  spec.summary       = %q{Convert JSON data into jani structured movie object.}
  spec.description   = %q{Convert JSON data into jani structured movie object.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-collection_matchers"
  spec.add_development_dependency "factory_girl"
end
