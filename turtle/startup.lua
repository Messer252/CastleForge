-- CastleForge Turtle Client

local modemSide = "back"

if not peripheral.isPresent(modemSide) then
    error("No modem found on " .. modemSide)
end

rednet.open(modemSide)

local protocol = "castleforge"

local turtleID = os.getComputerID()

local turtleData = {

    type = "register",

    name = "Turtle-" .. turtleID,

    role = "unassigned"

}


print("CastleForge Turtle")
print("------------------")

print("Registering...")

rednet.broadcast(
    turtleData,
    protocol
)


local id, response = rednet.receive(protocol, 10)


if response then

    print("Connected!")
    print(response.message)

else

    print("No server found.")

end
