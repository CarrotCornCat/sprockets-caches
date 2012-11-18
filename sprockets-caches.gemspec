# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "sprockets-caches/version"

Gem::Specification.new do |s|
  s.name        = "sprockets-caches"
  s.version     = Sprockets::Caches::VERSION
  s.authors     = ["Christoph Grabo"]
  s.email       = ["chris@dinarrr.com"]
  s.homepage    = "https://github.com/CarrotCornCat/sprockets-caches"
  s.summary     = %q{Meta gem for different sprocket cache store implementations}
  s.description = %q{Meta gem for different sprocket cache store implementations like Memcache, MongoDb, Redis and Riak.}
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "sprockets-cache-memcache"
  s.add_dependency "sprockets-cache-mongodb"
  s.add_dependency "sprockets-cache-redis"
  s.add_dependency "sprockets-cache-riak"
end
