local player1 = "sadoj49jv"
local player2 = "aijdajsda"
local player3 = "aspijfg"

local okTable = {
    [1] = player1 .. ", ", 
    [2] = player2 .. ", ", 
    [3] = player3 .. ", "
}

table.insert(okTable, 4, "a")

print("\n" .. table.concat(okTable))