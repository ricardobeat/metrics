require "kemal"

DEBUG          = (ENV["STATS_DEBUG"]? ? true : false)
SERVER_PORT    = (ENV["STATS_PORT"]? || 8125).to_i
FLUSH_INTERVAL = (ENV["FLUSH_INTERVAL"]? || 60.seconds).to_i
PREFIX         = (ENV["STATS_PREFIX"]? || "user.rtomasi")

get "/" do
  "Hello World!"
end

ws "/live" do |socket|
  socket.send "Hello from Kemal!"
end

Kemal.run
