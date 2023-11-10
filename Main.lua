print("Hello world!")
print("\n")

-- Data Types
-- nil - Absence of data. Assign variables back to nil when done with them.
print("----------nil----------")
print("Data value is: ", data)
print("\n")

-- Boolean - True or False
print("----------Boolean----------")
LearningLua = true
print("LearningLua value is: ", LearningLua)
print("\n")

-- number - Any real number
print("----------number----------")
num1 = 256
print("Num1 value is: " .. num1)
num1 = 3.14
print("Num1 value is: " .. num1)
three = math.floor(3.1425)
print("three value is: " .. three)
five = math.ceil(4.145)
print("five value is: " .. five)
decimal = .707
print("float value is: " .. decimal)

print("\n")

-- string -- array of characters
print("----------string----------")
 FirstName = "Brandon"
 print("FirstName value is: " .. FirstName)

 LastName = "Davis"
 print("LastName value is: " .. LastName)
 print("\n")
 

 -- Value's type
 print("----------Value's type----------")
 print("Type of 'Data': " .. type(data))
 print("Type of 'LearningLua': " .. type(LearningLua))
 print("Type of 'Num1': " .. type(num1))
 print("Type of 'Decimal': " .. type(decimal))
 print("Type of 'FirstName': " .. type(FirstName))
 print("Type of 'LastName': " .. type(LastName))
 print("\n")


 -- String length
 print("String Length")
 hello = "hello, world"
 count_hash = #hello
 count_func = string.len(hello)
 print("The string " .. hello .. "has a length of: " .. count_hash .. " " .. count_func)

 print(#"hello, world")
 print(string.len("hello, world"))
 print("\n")

 print("----------Concatenate three string----------")
 name = "Brandon"
 color = "Blue"
 print("Jill " .. "likes" .. " Red")

 print("----------Concatenate a variable and a string----------")
 print("Jack dislikes " .. color)

 print("----------Concatenate two variables and a string----------")
 print(name .. " likes " .. color)

 print("----------Concatenate only variables----------")
 print(name .. color)

 print("----------Assign result to a variable----------")
 message = name .. " likes " .. color
 print(message)
 print("\n")

 -- String coercion - covert data types to strings
 print("----------String coercion----------")
 pi = 3.14
 message = "The rounded value of pi is: " .. pi
 print(message)
 print("Nine: " .. 9)
 eleven = "10" + 1
 print(eleven)
 print(7 + "01")
 print("\n")

--  print("----------Console Input----------")
--  print("Please enter your name: ")
--  name = io.read()
--  print("Hello " .. name)
--print("\n")

 print("----------Scope----------")
-- Without the local keyword the variable is global and can be accessed from anywhere

 gStr = "Global String"

 local fStr = "File scope"
 print(fStr)
 do
    local lStr= "Local Chunk"
    print("Accessing global scope inside the do keyword: " .. gStr)
    print("Accessing file scope inside the do keyword: " .. fStr)
    print("Accessing local scope inside the do keyword: " .. lStr)

 end

 do
    local llStr = "Another Local Chunk"
    print("Accessing global scope inside the do keyword: " .. gStr)
    print("Accessing file scope from inside a different do keyword: " .. fStr)
    print("Accessing local scope from inside a different do keyword: " .. tostring(lStr))
 end

 print("Accessing local scope outside the do keyword: " .. tostring(lStr))
 print("Accessing local scope outside the do keyword: " .. tostring(llStr))
print("\n")

print("----------Shadowing----------")
-- When a variable local to a chunk has the same name as a global variable.
message = "Global scope"

print("message: " .. message)

do
    local message = "Local scope"
    print("message: " .. message)
end

print("message: " .. message)
print("\n")

print("----------Functions----------")
function PrintSomething()
    local str1 = "Hello"
    local str2 = "World!"
    print(str1 .. ", " .. str2)
end

function AddNumbers(x, y)
    local result = x + y
    return result
end
PrintSomething()
print(AddNumbers(1,2))
print("\n")

print("----------Multiple Returns----------")
function SquaredAndCube(x)
    local squared = x*x
    local cubed = x*x*x
    return squared, cubed
end

s,c = SquaredAndCube(3)
print("Squared: " .. s)
print("Cubed: " .. c)
print("\n")

print("----------If Statements----------")
print("Enter your name")
--name = io.read()
name = "brandon"
if #name <= 3 then
    print("Name is too short: " .. name)
elseif #name <= 6 then
    print(name .. " is an average length name")
else
    print("That's a long name, " .. name)
end
print("\n")

print("----------Loops----------")
-- While loop
x = 10
while x > 0 do
    print("Current value in while loop: " .. x)
    x = x - 1
end

-- Repeat until/do while Loop
y = 10
repeat 
    print("Repeat loop")
until y > 2

-- Numeric for loop
for i = 0, 10, 1 do
    print(i)
end

-- for i = 0, 10 do
--     print(i)
-- end
print("\n")

