function sleep(n)
    os.execute("sleep " .. tonumber(n))
end

local player1 = "test"
local player2 = "testing test"
local player3 = "testing test tester"
local tableNumber = 1

local okTable = {}

local function run(currentNumber, endNumber)
    local firstNumber = currentNumber    
    local totalNumber = firstNumber
    
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
        
        print(currentNumber .. "    " .. totalNumber)
        
        if currentNumber ~= endNumber then
            table.insert(okTable, tableNumber, currentNumber .. ", ")
        else
            table.insert(okTable, tableNumber, "and " .. currentNumber .. ". added up they equal " .. totalNumber)
        end
        
        tableNumber = tableNumber + 1
        
        if firstNumber <= endNumber then
            currentNumber = currentNumber + 1
            totalNumber = totalNumber + currentNumber
        else
            currentNumber = currentNumber - 1
            totalNumber = totalNumber - currentNumber
        end
    end
end

print("\n\n")
run(5, 0)
print("\n" .. table.concat(okTable))