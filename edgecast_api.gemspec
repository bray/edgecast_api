# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "edgecast_api/version"

Gem::Specification.new do |s|
  s.name        = "edgecast_api"
  s.version     = EdgecastApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["bray"]
  s.email       = ["brian.ray1@gmail.com"]
  s.homepage    = "http://github.com/bray/edgecast_api"
  s.summary     = %q{Client to the Edgecast API.}
  s.description = %q{Client to the Edgecast API.}

  s.rubyforge_project = "edgecast_api"
  
  s.add_runtime_dependency 'httparty'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
