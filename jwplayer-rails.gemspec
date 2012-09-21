# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jwplayer/rails/version'

Gem::Specification.new do |gem|
  gem.name          = "jwplayer-rails"
  gem.version       = JWPlayer::Rails::VERSION
  gem.authors       = ["Anton Volkov"]
  gem.email         = ["choixer@gmail.com"]
  gem.description   = "Rails asset pipeline integration for JWPlayer."
  gem.summary       = "Seamlessly integrates JWPlayer into the Rails asset pipeline."

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "railties",  ">= 3.1.1"
end
