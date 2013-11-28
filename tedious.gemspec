# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tedious/version'

Gem::Specification.new do |spec|
  spec.name          = "tedious"
  spec.version       = Tedious::VERSION
  spec.authors       = ["Stephen Nelson-Smith"]
  spec.email         = ["stephen@atalanta-systems.com"]
  spec.description   = %q{A simple command line tool which makes getting started with Test-Driven Infrastructure less tedious.}
  spec.summary       = %q{A simple command line tool which makes getting started with Test-Driven Infrastructure less tedious.}
  spec.homepage      = "http://github.com/Atalanta/tedious"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
