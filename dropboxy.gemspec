# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dropboxy/version'

Gem::Specification.new do |spec|
  spec.name          = "dropboxy"
  spec.version       = Dropboxy::VERSION
  spec.authors       = ["Wilbur Suero"]
  spec.email         = ["wilbur.himself@gmail.com"]
  spec.description   = %q{Fetches textile documents from Dropbox to use as content in websites.}
  spec.summary       = %q{Fetches textile documents from Dropbox to use as content in websites.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("railties", ">= 3.2.6", "< 5")
  spec.add_dependency "dalli"
  spec.add_dependency "dropbox-sdk"
  spec.add_dependency "RedCloth"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
