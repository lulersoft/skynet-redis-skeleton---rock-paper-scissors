local skynet = require "skynet"
local redis = require "redis"

skynet.start(function()
	local db = redis.connect "main"
	db:select(0)
	db:set("A","hello world")
	print(db:get("A"))
	db:disconnect()
	skynet.exit()
end)

