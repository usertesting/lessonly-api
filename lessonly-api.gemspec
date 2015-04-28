# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lessonly/api/version'

Gem::Specification.new do |spec|
  spec.name          = "lessonly-api"
  spec.version       = Lessonly::Api::VERSION
  spec.authors       = ["Matt Snyder"]
  spec.email         = ["snyder@usertesting.com"]
  spec.summary       = %q{A neat little wrapper around the Lessonly API}
  spec.description   = %q{Make working with Lessonly that much easier. This gem wraps basic functionality oprovided by the Lessonly API.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "roar"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-given"
  spec.add_development_dependency "guard"
end
