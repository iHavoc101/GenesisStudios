
-- // Constants \\ --
-- [ Services ] --
local Services = loadstring(readfile("Genesis Studios/Core/Services.lua", true))()

-- [ Modules ] --
local Signal = loadstring(readfile("Genesis Studios/Libraries/RBXScriptSignal.lua"))()
local Maid = loadstring(readfile("Genesis Studios/Core/Maid.lua"))()

-- // Variables \\ --
Maid = Maid.new()

-- // Main Module \\ --
local SyncedPoller = {}
SyncedPoller.__index = SyncedPoller

--[[
SyncedPoller.new(Delay: integer, Callback: Function)
    Creates the SyncedPoller Instance.
]]
function SyncedPoller.new(Interval: integer, Event: RBXScriptSignal)
    local self = setmetatable({
        Interval = Interval;
        OnPoll = Signal.new();
        _ID = nil;
        _LastPoll = time();
    }, SyncedPoller)
    Event = Event or Services.RunService.RenderStepped

    self._ID = Maid:GiveTask(Event:Connect(function()
        local Elapsed = time() - self._LastPoll
        if Elapsed >= self.Interval then
            self._LastPoll = time()
            self.OnPoll:Fire(Elapsed)
        end
    end))

    return self
end

--[[
SyncedPoller:Destroy()
    Disconnects the SyncedPoller Instance(s)
]]
function SyncedPoller:Destroy()
    if self._ID then
        Maid[self._ID] = nil
    else
        Maid:DoCleaning()
    end
end

return SyncedPoller
