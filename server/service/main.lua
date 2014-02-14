local skynet = require "skynet"

local max_client = 64

skynet.start(function()
	print("Server start")
	local service = skynet.newservice("service_mgr")
	skynet.monitor "simplemonitor"
	local lualog = skynet.newservice("lualog")
	local console = skynet.newservice("console")
	local watchdog = skynet.newservice("watchdog","8888", max_client, 0)
	local testredis = skynet.newservice("testredis")

	skynet.exit()
end)
