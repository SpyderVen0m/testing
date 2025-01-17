function sleep(n)
    os.execute("sleep " .. tonumber(n))
end

local player1 = "test"
local player2 = "testing test"
local player3 = "testing test tester"
local tableNumber = 4

local okTable = {
    [1] = player1 .. ", ", 
    [2] = player2 .. ", ", 
    [3] = player3 .. ", "
}

local function run(startNumber, endNumber)
    local running = true
    while running do 
        if startNumber == endNumber then 
            running = false
        end
        print(startNumber)
        table.insert(okTable, tableNumber, startNumber .. ", ")
        tableNumber = tableNumber + 1
        startNumber = startNumber + 1
    end
end




--table.insert(okTable, tableNumber, "newplayer")
print("\n\n")
run(0, 10)
print("\n" .. table.concat(okTable))