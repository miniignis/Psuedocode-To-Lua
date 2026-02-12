-- #1
-- Ask the user for some text, convert the text into all caps.
print("Please type in something!")
local input = io.read()
print(string.upper(input))

-- #2 
-- Ask the user for two numbers, add them together, print the result!
print("Please type in two numbers to add.")
local numberA = io.read()
local numberB = io.read()
while tonumber(numberA) == nil or tonumber(numberB) == nil do
    print("One or more of your numbers was invalid! Try again.")
    numberA = io.read()
    numberB = io.read()
end
print(numberA + numberB)

-- #3
-- Get an unknown amount of numbers from the user, add them together, print out the result.
local loop = true
local total = 0

while loop do
    print("Please enter a number.")
    
    input = io.read()
    while tonumber(input) == nil do
        print("Number invalid! Try again.")
        input = io.read()
    end

    total = total + input

    print("Continue? (y/n)")
    input = io.read()

    while input ~= "y" and input ~= "n" do
        print("Invalid input! Try again (y/n)")
        input = io.read()
    end

    if input == "n" then
        loop = false
    end
end

print("Your total is... " .. total)