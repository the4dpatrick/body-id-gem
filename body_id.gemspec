# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'body_id/version'

Gem::Specification.new do |spec|
  spec.name          = "body_id"
  spec.version       = BodyId::VERSION
  spec.authors       = ["Patrick Perey"]
  spec.email         = ["the4dpatrick@yahoo.com"]
  spec.summary       = %q{Create a custom body_id selector from the controller and action name}
  spec.description   = %q{Create a custom body_id selector from the controller and action name}
  spec.homepage      = "https://github.com/the4dpatrick/body-id-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
