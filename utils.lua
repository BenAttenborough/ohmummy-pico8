Utils = {}

Utils.every = function (table)
    local cond = true
    for key, _ in pairs(table) do
        if table[key] == false then
            cond = false
        end
    end
    return cond
end
