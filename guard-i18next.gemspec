# -*- encoding: utf-8 -*-
Kernel.load File.expand_path('../lib/guard/i18next/version.rb', __FILE__)

Gem::Specification.new do |s|
  s.name        = "guard-i18next"
  s.version     = Guard::I18nextVersion::VERSION
  s.authors     = ["Jared Scott", "Nicolas ZERMATI"]
  s.email       = ["gecko@uw.edu", "nicoolas25@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Automatically generate js files from locales files for consumption by i18next.js.}
  s.description = %q{Automatically generate js files from locales files for consumption by i18next.js.}

  # s.rubyforge_project = "guard-i18next"

  s.files = Dir.glob('{lib}/**/*') #+ %w[README.md]
  s.require_path =  ['lib']

  # specify any dependencies here; for example:
  s.add_dependency "json"
  s.add_dependency "guard"

  s.add_development_dependency "rspec", "~> 2.6"
end
