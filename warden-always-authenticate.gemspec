# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'warden/always_authenticate/version'

Gem::Specification.new do |gem|
  gem.name          = "warden-always-authenticate"
  gem.version       = Warden::AlwaysAuthenticate::VERSION
  gem.authors       = ["Jon Rowe"]
  gem.email         = ["hello@jonrowe.co.uk"]
  gem.description   = %q{Simple gem for forcing warden to authenticate.}
  gem.summary       = %q{Simple gem for forcing warden to authenticate.}
  gem.homepage      = "https://github.com/JonRowe/warden-always-authenticate.git"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'warden'

  gem.add_development_dependency 'rspec'
  if RUBY_VERSION.to_f >= 2
    gem.add_development_dependency "rake", '~> 11.0'
  else
    gem.add_development_dependency "rake", '~> 10.0'
  end

end
