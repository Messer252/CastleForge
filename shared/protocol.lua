-- CastleForge Communication Protocol
-- Shared by server and turtles

local protocol = {}

protocol.NAME = "castleforge"

-- Messages sent by turtles
protocol.TURTLE_REGISTER = "turtle_register"
protocol.TURTLE_HEARTBEAT = "turtle_heartbeat"
protocol.TURTLE_STATUS = "turtle_status"

-- Messages sent by server
protocol.SERVER_ACCEPT = "server_accept"
protocol.SERVER_COMMAND = "server_command"

-- Commands
protocol.CMD_STOP = "stop"
protocol.CMD_RETURN = "return"
protocol.CMD_STATUS = "status"

return protocol
