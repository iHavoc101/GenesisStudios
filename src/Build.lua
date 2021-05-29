-- // Functions \\ ==
local function RetrieveSource(Link, Root)
    Link = tostring(Link)
    if string.match(Link, "^https://raw.githubusercontent.com/") then
        return game:HttpGet(Link, true)
    elseif Root then
        return game:HttpGet("https://raw.githubusercontent.com/iHavoc101/GenesisStudios/main/" .. Link)
    else
        return game:HttpGet("https://raw.githubusercontent.com/iHavoc101/GenesisStudios/main/src/" .. Link)
    end
end

-- // Variables \\ --
local LoadInterface = loadstring(isfile("User Interface/LoadInterface.lua") and readfile("User Interface/LoadInterface.lua") or RetrieveSource("User%20Interface/LoadInterface.lua"))()

-- // Actions \\ --
-- [ Folders ] --
LoadInterface.SetStatus("Building Folders...")
LoadInterface.SetProgress(0)
pcall(makefolder, "Genesis Studios/Core")
pcall(makefolder, "Genesis Studios/User Interface")
pcall(makefolder, "Genesis Studios/Modules")
pcall(makefolder, "Genesis Studios/Libraries")
pcall(makefolder, "Genesis Studios/Scripts")

-- [ Lazy Loader ] --
LoadInterface.SetStatus("Building LazyLoader.lua...")
LoadInterface.SetProgress(5)
pcall(writefile, "Genesis Studios/LazyLoader.lua", RetrieveSource("LazyLoad.lua"))

-- Core --
LoadInterface.SetStatus("Building Core...")
LoadInterface.SetProgress(25)
pcall(writefile, "Genesis Studios/Core/Services.lua", RetrieveSource("Core/Services.lua"))
pcall(writefile, "Genesis Studios/Core/Maid.lua", RetrieveSource("Core/Maid.lua"))
pcall(writefile, "Genesis Studios/Core/Input.lua", RetrieveSource("Core/Input.lua"))
pcall(writefile, "Genesis Studios/Core/RBXScriptSignal.lua", RetrieveSource("Core/RBXScriptSignal.lua"))

-- User Interface --
LoadInterface.SetStatus("Building Interface...")
LoadInterface.SetProgress(35)
pcall(writefile, "Genesis Studios/User Interface/LoadInterface.lua", RetrieveSource("User%20Interface/LoadInterface.lua"))

-- Modules --
LoadInterface.SetStatus("Building Modules...")
LoadInterface.SetProgress(50)

-- Libraries --
LoadInterface.SetStatus("Building Libraries...")
LoadInterface.SetProgress(70)
pcall(writefile, "Genesis Studios/Libraries/DateFormat.lua", RetrieveSource("Libraries/DateFormat.lua"))
pcall(writefile, "Genesis Studios/Libraries/SyncedPoller.lua", RetrieveSource("Libraries/SyncedPoller.lua"))

-- Scripts --
LoadInterface.SetStatus("Building Scripts...")
LoadInterface.SetProgress(90)
pcall(writefile, "Genesis Studios/Scripts/Genesis Hub.lua", "")

-- [ Completion ] --
wait(1)
LoadInterface.SetStatus("Build Complete!")
LoadInterface.SetProgress(100)

wait(2.5)
LoadInterface:Destroy()
