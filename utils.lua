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

Utils.shuffle = function (t)
    -- do a fisher-yates shuffle
    for i = #t, 1, -1 do
      local j = flr(rnd(i)) + 1
      t[i], t[j] = t[j], t[i]
    end
end