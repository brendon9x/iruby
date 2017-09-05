# coding: utf-8
require File.dirname(__FILE__) + '/lib/iruby/version'
require 'date'

Gem::Specification.new do |s|
  s.name          = 'iruby_bm'
  s.date          = Date.today.to_s
  s.version       = IRuby::VERSION
  s.authors       = ['Damián Silvani', 'Min RK', 'Martin Sarsale', 'Josh Adams', 'Daniel Mendler']
  s.email         = ['benjaminrk@gmail.com']
  s.description   = 'Ruby Kernel for IPython'
  s.summary       = 'A Ruby kernel for IPython frontends (notebook console, etc.)'
  s.homepage      = 'https://github.com/brendon9x/iruby'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^test/})
  s.require_paths = %w(lib)

  m = "Consider installing the optional dependencies to get additional functionality:\n"
  File.read('Gemfile').scan(/gem\s+'(.*?)'/) { m << "  * #{$1}\n" }
  s.post_install_message = m << "\n"

  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'geminabox', '~> 0.12'

  s.add_runtime_dependency 'activesupport', '>= 4.0'
  s.add_runtime_dependency 'bond', '~> 0'
  s.add_runtime_dependency 'ffi-rzmq', '~> 2.0'
  s.add_runtime_dependency 'multi_json', '~> 1.8'
  s.add_runtime_dependency 'mimemagic', '~> 0'
end
