local root = "pgui"

local function LoadFile(file)
    AddCSLuaFile(file)

    if CLIENT then
        include(file)
    end
end

local LoadFolder

function LoadFolder(folder)
    local f, d = file.Find(folder .. "/*", "LUA")

    if folder ~= root then
        for _, fil in pairs(f) do
            //print("L: " .. folder .. "/" .. fil)
            LoadFile(folder .. "/" .. fil)
        end
    end

    for _, dir in pairs(d) do
        //print("L: " .. folder .. "/" .. dir)
        LoadFolder(folder .. "/" .. dir)
    end
end

LoadFile(root .. "/utils.lua")
LoadFile(root .. "/fonts.lua")
LoadFile(root .. "/colors.lua")
LoadFile(root .. "/skin.lua")
LoadFolder(root)