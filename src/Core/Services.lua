return setmetatable({}, {__index = function(Self, Index)
    local NewService = game.GetService(game, Index)
    if NewService then
        Self[Index] = NewService
    end
    return NewService
end})
