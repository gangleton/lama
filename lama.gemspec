#encoding: utf-8

require File.expand_path('../lib/lama/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'faraday'
  gem.add_dependency 'faraday_middleware'
  gem.add_dependency 'hashie'
  gem.add_dependency 'rash'
  gem.add_dependency 'multi_xml'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'yard'

  gem.author      = 'Serena Wales'
  gem.description = %q(Ruby wrapper for the Davenport LAMA API)
  gem.email       = 'serena@codeforamerica.org'
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files       = `git ls-files`.split("\n")
  gem.name        = 'lama'
  gem.require_paths = ['lib']
  gem.summary     = gem.description
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version     = LAMA::VERSION
end
