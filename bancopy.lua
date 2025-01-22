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
    while true do 
        if startNumber == endNumber + 1 then 
            break
        end
            print(startNumber)
            if startNumber ~= endNumber then
                table.insert(okTable, tableNumber, startNumber .. ", ")
            else
                table.insert(okTable, tableNumber, "and " .. startNumber .. ". ")
            end
            tableNumber = tableNumber + 1
            startNumber = startNumber + 1
    end
end

print("\n\n")
run(0, 10)
print("\n" .. table.concat(okTable))