# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "restfolia/version"

Gem::Specification.new do |s|
  s.name        = "restfolia"
  s.version     = Restfolia::VERSION
  s.authors     = ["Roger Leite"]
  s.email       = ["roger.barreto@gmail.com"]
  s.homepage    = "http://rogerleite.github.com/restfolia"
  s.summary     = %q{REST client to consume and interact with Hypermedia API}
  s.description = %q{REST client to consume and interact with Hypermedia API}
  s.license     = 'MIT'

  s.rubyforge_project = "restfolia"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "multi_json", "~> 1.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "minitest", "~> 3"
  s.add_development_dependency "minitest-reporters", "~> 0.7.0"

  s.add_development_dependency "vcr", "~> 2.2.2"
  s.add_development_dependency "webmock"
  s.add_development_dependency "mocha"
end
