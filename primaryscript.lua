function sleep(n)
    os.execute("sleep " .. tonumber(n))
end

local player1 = "test"
local player2 = "testing test"
local player3 = "testing test tester"
local tableNumber = 1

local okTable = {
}

local function run(currentNumber, endNumber)
    local firstNumber = currentNumber    
    
    while true do 
        if firstNumber <= endNumber then
            if currentNumber == endNumber + 1 then 
                break
            end
        else
            if currentNumber == endNumber - 1 then 
                break
            end
        end
        
        print(currentNumber)
        
        if currentNumber ~= endNumber then
            table.insert(okTable, tableNumber, currentNumber .. ", ")
        else
            table.insert(okTable, tableNumber, "and " .. currentNumber .. ". ")
        end
        
        tableNumber = tableNumber + 1
        
        if firstNumber <= endNumber then
            currentNumber = currentNumber + 1
        else
            currentNumber = currentNumber - 1
        end
    end
end

print("\n\n")
run(0, 1000)
print("\n" .. table.concat(okTable))