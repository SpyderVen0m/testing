local attempt = 0
local maxOne = 664
local maxTwo = 152
local minOne = 0
local minTwo = 0
local numberone = math.random(minTwo, maxOne)
local numbertwo = math.random(minTwo, maxTwo)
local searching = true
local probability = maxOne * maxTwo

local function run(one, two)
    while true do
        if numberone == one and numbertwo == two then
            print("\n\n\nfound numbers " .. numberone .. " and " .. numbertwo .. " in " .. attempt .. " attempts.        probability was 1 in " .. probability)
            break
        else
            numberone = math.random(minOne, maxOne)
            numbertwo = math.random(minTwo, maxTwo)
            attempt = attempt + 1
            print("attempt " .. attempt .. ", numbers " .. numberone .. ", " .. numbertwo)
        end
    end
end

run(4, 8)