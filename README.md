# Sprockets Caches

[![Join the chat at https://gitter.im/abstellgleis/sprockets-caches](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/abstellgleis/sprockets-caches?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Meta gem for different sprocket cache store implementations like Memcache, MongoDB, Redis and Riak.

## Usage

Gemfile:

```ruby
gem "sprockets"
gem "sprockets-caches"
# ...
```

config.ru:

```ruby
require "sprockets"
# and one of the following:
require "sprockets/cache/memcache_store"
require "sprockets/cache/mongodb_store"
require "sprockets/cache/redis_store"
require "sprockets/cache/riak_store"

env = Sprockets::Environment.new
env.cache = Sprockets::Cache::RiakStore.new(riak, "sprockets") # example for Riak
# ...
```

First argument is the desired client/connection and the second (an optional) key prefix/bucket/database name.
