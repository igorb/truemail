# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'truemail/version'

Gem::Specification.new do |spec|
  spec.name          = 'truemail'
  spec.version       = Truemail::VERSION
  spec.authors       = ['Vladislav Trotsenko']
  spec.email         = ['admin@bestweb.com.ua']

  spec.summary       = %(truemail)
  spec.description   = %(Configurable plain Ruby email validator. Verify email via Regex, DNS and SMTP. Be sure that email address exists.)

  spec.homepage      = 'https://github.com/rubygarage/truemail'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.5.0'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'bundler-audit', '~> 0.6.1'
  spec.add_development_dependency 'fasterer', '~> 0.8.1'
  spec.add_development_dependency 'ffaker', '~> 2.13'
  spec.add_development_dependency 'json_matchers', '~> 0.11.1'
  spec.add_development_dependency 'overcommit', '~> 0.51.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.7'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.1'
  spec.add_development_dependency 'reek', '~> 5.5'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'rubocop', '~> 0.76.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.5', '>= 1.5.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.37'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
  spec.add_development_dependency 'truemail-rspec', '~> 0.1.1'
end
