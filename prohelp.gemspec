# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prohelp/version'

Gem::Specification.new do |spec|
  spec.name          = 'prohelp'
  spec.version       = Prohelp::VERSION
  spec.authors       = ['Azki Darmawan']
  spec.email         = ['azki.darmawan@gmail.com']

  spec.summary       = 'Proto helper'
  spec.homepage      = "https://github.com/azkidarmawan/prohelp"
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = %w(README.md) + Dir.glob('{lib/**/*}')
  spec.test_files    = `git ls-files -- spec/*`.split("\n")
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}){ |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.3.0'

  spec.add_dependency 'grpc', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
