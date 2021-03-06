# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bankscrap/sabadell/version'

Gem::Specification.new do |spec|
  spec.name          = 'bankscrap-sabadell'
  spec.version       = Bankscrap::Sabadell::VERSION
  spec.authors       = ['Javier Cuevas']
  spec.email         = ['javi@diacode.com']
  spec.summary       = 'Sabadell adapter for Bankscrap'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'bankscrap', '~> 2.0.6'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
