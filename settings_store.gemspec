# -*- encoding: utf-8 -*-
require File.expand_path('../lib/settings_store/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brendon Murphy"]
  gem.email         = ["xternal1+github@gmail.com"]
  gem.summary       = %q{A very simple hash like store for App settings}
  gem.description   = gem.summary
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "settings_store"
  gem.require_paths = ["lib"]
  gem.version       = SettingsStore::VERSION

  gem.add_dependency "activesupport"

  gem.add_development_dependency "rspec", ">= 2.0.0"
end
