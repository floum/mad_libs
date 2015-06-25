# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mad_libs/version'

Gem::Specification.new do |spec|
  spec.name          = 'mad_libs'
  spec.version       = MadLibs::VERSION
  spec.authors       = ['Efflam Castel']
  spec.email         = ['efflamm.castel@gmail.com']
  spec.summary       = 'A Mad Libs Gem from Best of Ruby Quiz'
  spec.description   = 'Have tons of fun with your friends writing stories'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'thor', '~> 0.19'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'guard-rspec', '~> 4.5'
  spec.add_development_dependency 'guard-rubocop', '~> 1.2'
end
