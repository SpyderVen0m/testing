local player1 = "sadoj49jv"
local player2 = "aijdajsda"
local player3 = "aspijfg"
local function run(startNumber, endNumber)
    local running = true
    while running do 
        if startNumber == endNumber then 
            running = false
        end
        print(startNumber)
        startNumber = startNumber + 1
    end
end


local okTable = {
    [1] = player1 .. ", ", 
    [2] = player2 .. ", ", 
    [3] = player3 .. ", "
}

table.insert(okTable, 4, "a")

print("\n" .. table.concat(okTable))

run(0, 50)