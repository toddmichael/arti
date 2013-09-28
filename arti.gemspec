# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arti/version'

Gem::Specification.new do |spec|
  spec.name          = "arti"
  spec.version       = Arti::VERSION
  spec.authors       = ["Todd Michael Bushnell"]
  spec.email         = ["toddmichael@gmail.com"]
  spec.description   = %q{A Ruby interface for interacting with JFrog's Artifactory artifact repository.}
  spec.summary       = spec.description
  spec.homepage      = "http://github.com/toddmichael/arti"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
