# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dirtwalker/version'

Gem::Specification.new do |spec|
  spec.name          = "dirtwalker"
  spec.version       = Dirtwalker::VERSION
  spec.authors       = ["Ryan T. Hosford"]
  spec.email         = ["tad.hosford@gmail.com"]
  spec.description   = %q{ Combines https://rubygems.org/gems/pay_dirt with https://rubygems.org/gems/pay_dirt }
  spec.summary       = %q{ Callable or Runnable service objects }
  spec.homepage      = "https://rubygems.org/gems/pay_dirt"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.1.2'

  spec.add_runtime_dependency "pay_dirt"
  spec.add_runtime_dependency "skywalker"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
