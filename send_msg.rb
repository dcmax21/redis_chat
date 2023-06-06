#!/usr/bin/env ruby
require "redis"
redis = Redis.new(url: ENV['REDIS_URL'])
message = ARGV.first

redis.publish("chat", message)
