# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'medistrano_status/version'

Gem::Specification.new do |gem|
  gem.name          = "medistrano_status"
  gem.version       = MedistranoStatus::VERSION
  gem.authors       = ["Will Duty"]
  gem.email         = ["wduty@mdsol.com"]
  gem.description   = %q{gem description}
  gem.summary       = %q{gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
