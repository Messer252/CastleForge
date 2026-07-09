local files = {
    {
        url = "https://raw.githubusercontent.com/Messer252/CastleForge/main/server/startup.lua",
        path = "startup.lua"
    },
    {
        url = "https://raw.githubusercontent.com/Messer252/CastleForge/main/shared/protocol.lua",
        path = "protocol.lua"
    }
}


for _, file in ipairs(files) do

    print("Downloading "..file.path)

    shell.run(
        "wget",
        file.url,
        file.path
    )

end


print("CastleForge server installed!")
