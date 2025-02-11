local attempt = 0
local maxOne = 664
local maxTwo = 152
local minOne = 0
local minTwo = 0
local numberone = math.random(minTwo, maxOne)
local numbertwo = math.random(minTwo, maxTwo)
local searching = true
local probability = maxOne * maxTwo

while searching do
    if numberone == 2 and numbertwo == 13 then
        searching = false
        print("\n\n\nfound numbers " .. numberone .. ", " .. numbertwo .. " in " .. attempt .. " attempts.        probability was 1 in " .. probability)
    else
        numberone = math.random(minOne, maxOne)
        numbertwo = math.random(minTwo, maxTwo)
        attempt = attempt + 1
        print("attempt " .. attempt .. ", numbers " .. numberone .. ", " .. numbertwo)
    end
end