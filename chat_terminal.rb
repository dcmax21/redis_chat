require "redis"
redis = Redis.new(url: ENV['REDIS_URL'])
redis.subscribe("chat") do |on|
  on.message do |channel, message|
    puts "Guest: #{message}"
  end
end