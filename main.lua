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