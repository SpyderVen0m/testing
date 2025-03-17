local function run(mode, n)
    print("\n\n\n")
    if mode == 1 then
        local intAngle = (180 * (n - 2)) / n
        local allAngles = intAngle * n
        print(n .. ", " .. intAngle .. ", " .. allAngles)
    end

    if mode == 2 then
        local sides = 360 / (180 - n)
        local allAngles = n * sides
        print(sides .. ", " .. n .. ", " .. allAngles)
    end
    
    if mode == 3 then
        local sides = (n / 180) + 2
        local intAngle = n / sides
        print(sides .. ", " .. intAngle .. ", " .. n)
    end
end

run(1, 45)