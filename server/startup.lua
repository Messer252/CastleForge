-- CastleForge Server Startup

local modemSide = "back"

if not peripheral.isPresent(modemSide) then
    error("No modem found on " .. modemSide)
end

rednet.open(modemSide)

print("================================")
print("     CastleForge Server")
print("================================")

print("Server online")
print("Listening for turtles...")

local protocol = "castleforge"

while true do

    local id, message = rednet.receive(protocol)

    print("")
    print("Message received")
    print("From turtle:", id)

    if type(message) == "table" then

        if message.type == "register" then

            print("Turtle registering:")
            print("Name:", message.name)
            print("Role:", message.role)

            rednet.send(
                id,
                {
                    type = "accepted",
                    message = "Welcome to CastleForge"
                },
                protocol
            )

        end

    end

end
