# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_hipchat/version'

Gem::Specification.new do |gem|
  gem.name          = "to_hipchat"
  gem.version       = ToHipchat::VERSION
  gem.authors       = ["Marcelo Paez Sequeira"]
  gem.email         = ["marcelo@iugu.com"]
  gem.description   = %q{Command-line app that sends data to a hipchat chatroom}
  gem.summary       = %q{CLI To Send Data To Hipchat}
  gem.homepage      = "https://github.com/iugu/to_hipchat"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency('rdoc')
  gem.add_development_dependency('aruba')
  gem.add_development_dependency('rake', '~> 0.9.2')
  gem.add_dependency('methadone', '~> 1.2.4')
  gem.add_dependency('hipchat')
end
