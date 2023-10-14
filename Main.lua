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
 print("The string " .. hello .. "has a length of: " .. count_hash .. count_func)

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

 print("----------Console Input----------")
 print("Please enter your name: ")
 name = io.read()
 print("Hello " .. name)
