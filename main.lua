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
local loop = "y"
local total = 0

while loop == "y" do
    print("Please enter a number.")
    
    input = io.read()
    while tonumber(input) == nil do
        print("Number invalid! Try again.")
        input = io.read()
    end

    total = total + input

    print("Continue? (y/n)")
    loop = io.read()
end

print("Your total is... " .. total)

-- #4
-- Have the user define a maximum number, print out a random number between 0 and their numbers
-- Have the user play again or quit

math.randomseed(os.time())
local playing = "y"
while playing == "y" do
    print("Input a maximum number.")
    local max = io.read()
    while tonumber(max) == nil do
        print("Not a number! Try again.")
        max = io.read()
    end
    local random_number = math.random(max)
    print("Your random number is..." .. random_number)
    print("Again? (y/n)")
    playing = io.read()
end