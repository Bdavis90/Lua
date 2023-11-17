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

print("----------Table----------")
-- Tables are reference types
tbl = {}
print("Type of a table is " .. type(tbl))
tbl["x"] = 20
i = "x"
print("Retrieve using []: " .. tbl["x"])
print("Retrieve using variable " .. tbl[i])
print("Retrieve using . " .. tbl.x)

tbl.y = 10;
j = "y"

print("Retrieve using []: " .. tbl["y"])
print("Retrieve using variable " .. tbl[j])
print("Retrieve using . " .. tbl.y)

defaultTbl = {}
print("Value Type of missing key: " .. tostring(defaultTbl["a"]))

-- Table constructor

colors = {
    r = "#ff0000", 
  green = "#00ff00", 
  [3] = "#0000ff",
  ["w"] = "#ffffff"
}

print("red: " .. colors.r)
print("green: " .. colors.green)
print("blue: " .. colors[3])
print("white: " .. colors["w"])
print("\n")

print("----------Arrays----------")

arr = {}

arr[0] = "w"
arr[1] = "x"
arr[2] = "y"
arr[3] = "z"

for i = 0, 3 do
    print(arr[i])
end

-- Starts at index 1
arr = { "monday", "tuesday", "wednesday" }

for i=1,3 do
    print (arr[i])
end

-- Length of an array
-- Two nil back to back is considered the end of an array

arr = { "a", "b", "c", "d", "e", "f", "g" }
length = #arr
print("Length of the array: " .. length)

for i = 1, length do
    print(arr[i])
end
print("\n")


print("----------Multidimensional Arrays----------")

num_rows = 4
num_cols = 4

matrix = {} 
for i=1,num_rows do
  matrix[i] = {} 
  for j=1,num_cols do
    matrix[i][j] = i * j 
  end
end

print(matrix[1][1])
print(matrix[1][2])
print("\n")

print("----------Iterators----------")

print("Iterate through a table using pairs\n")
vector = {x = 34, y = 22, z = 56}

for k, v in pairs(vector) do
    print("Key: " .. k .. ", value: " .. v)
end

days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"}

print ("Iterate through a array using ipairs\n")
for i , v in ipairs(days) do
    print("Index: " .. i ..", Value: " .. v)
end
print("\n")

print("----------Closure----------")
-- Aka factory
function NextNumber()
    local currentNumber = 0

    return function()
        currentNumber = currentNumber + 1
        return currentNumber
    end
end

next = NextNumber();

print(next())
print(next())
print(next())
print("\n")


print("----------Iterator Functions----------")

-- Aka factory
function walk(array)
    local index = 0;
    return function()
        index = index + 1
        return array[index]
    end
end

for day in walk(days) do
    print(day)
end

print("\n")

print("----------Meta Table----------")

-- The left argument will be a table with a field called value, the right argument will be a number
function AddValueToTable(left, right)
        return left.value + right
end

function SubstractValueFromTable(left, right)
    return left.value - right
end
meta = {
    hello = "Meta's hello",
    __add = AddValueToTable,
    __sub = SubstractValueFromTable,
    __mul = function(left, right)
        return left.value * right
    end,
    __div = function(left, right)
        return left.value / right
    end,
    __mod = function(left, right)
        return left.value % right
    end,
    __pow = function(left, right)
        return left.value ^ right
    end,
    __concat = function(left, right)
        return left.value .. " and " .. right
    end,
    __index = function(table, key)
        return meta[key]
    end,
    __newindex = function(table, key, value)
        meta[key] = value
    end
}
container = {
    value = 29
}

-- meta.__add = function(left, right)
--     return left.value + right
-- end

setmetatable(container, meta)
result = container + 4
print("Add: " .. result)
result = container - 4
print("Substract: " .. result)
result = container * 4
print("Multiply: " .. result)
result = container / 4
print("Divide: " .. result)
result = container % 4
print("Modulo: " .. result)
result = container ^ 4
print("Power: " .. result)
result = container .. 4
print("Concat: " .. result)


print("----------__index----------")
print(container.hello)
print(meta.hello)

print(getmetatable(container))
-- __newindex
print("----------__newindex----------")
container.goodbye = "goodbye from container"
print(container.goodbye)
print(meta.goodbye)
-- rawset
print("----------rawset----------")
container.welcome = "welcome"
rawset(container, "welcome", "raw welcome")
print(container.welcome)
print(meta.welcome)
print("rawget: " .. rawget(container, "welcome"))

print("----------__call----------")
tbl = {
    __call = function(table, val1, val2)
        return "Hello, from the functor: " .. (val1 + val2)
    end
}
setmetatable(tbl, tbl)
message = tbl(2,3)
print("message: " .. message)
print("\n")

print("----------Classes----------")

Enemy = { }
Enemy.health = 200
Enemy.attack = 4
Enemy.defense = 20
Enemy.hit = function(self, damage)
    damage = damage - self.defense
    if damage < 0 then
        damage = 0
    end
    self.health = self.health - damage
end
Enemy.new = function(self, object)
    object = object or {} -- Use provided table or create new one
    setmetatable(object, self) -- assign meta table
    self.__index = self
    return object
end

grunt = Enemy.new(Enemy)
miniBoss = Enemy.new(Enemy)
boss = Enemy.new(Enemy, {health = 500, defense = 100})
miniBoss.health = 250

print("grunt health: " .. grunt.health)
print("grunt defense: " .. grunt.defense)
print("miniboss health: " .. miniBoss.health)
print("miniboss defense: " .. miniBoss.defense)
print("boss health: " .. boss.health)
print("boss defense: " .. boss.defense)

print("\n")
Enemy.hit(boss, 50)
Enemy.hit(grunt, 55)

print()
print("grunt health: " .. grunt.health)
print("boss health: " .. boss.health)

print("\n")
print("----------: Operator----------")

Vector = { 
    x = 0, 
    y = 1, 
    z = 0
  }
  
  Vector.new = function (self, object) 
      object = object or {} -- Use provided table, or create new one
      setmetatable(object, self) -- Assign meta table
      self.__index = self
      return object
  end
  
  Vector.print = function(self)
      print("x:" .. self.x .. ", y: " .. self.y .. ", z: " .. self.z)
  end 
  
  -- same as Vector.new(Vector, nil)
  velocity = Vector:new() 
  
  -- Same as Vector.new(Vector, {x=20,z=10})
  momentum = Vector:new({x = 20, z = 10})

  -- Using the dot syntax, the print method of the
-- Vector class is called, and the object instance
-- is passed as it's first variable (self)
print("With dot operator")
Vector.print(velocity)
Vector.print(momentum)

-- Using the colon syntax, the print method can be
-- called on instances of the Vector class. The colon
-- operator will fill in the first variable (self), with
-- the object instance it is being called on
print("With : operator")
velocity:print()
momentum:print()
print("\n")

print("----------Tables inside of objects----------")
Character = {
    alive = true
}

Character.position = {
  x = 10, y = 20, z = 30
}

-- -- This way has a reference to a table
-- Character.new = function(self, object)
--   object = object or {}
--   setmetatable(object, self)
--   self.__index = self
--   return object
-- end

-- This way creates your own version of a table
Character.new = function(self, object)
    object = object or {}
  
    -- Assign per instance variables after the object is valid
    -- but before setting the meta table! Copy all members of
    -- the new table by value!
    object.position = {}
    object.position.x = Character.position.x
    object.position.y = Character.position.y
    object.position.z = Character.position.z
    setmetatable(object, self)
    self.__index = self
    return object
  end

player1 = Character:new()
player2 = Character:new()

player1.position.x = 0
player2.position.y = 10

print ("Player 1, position: (" 
.. player1.position.x .. ", " .. player1.position.y 
.. ", " .. player1.position.z .. ")")

print ("Player 2, position: (" 
.. player2.position.x .. ", " .. player2.position.y 
.. ", " .. player2.position.z .. ")")

if player1.position == player2.position then
  print ("Player 1 and 2 have the same position reference");
else
  print ("Player 1 and 2 have unique positon tables");
end

print ("Table id:")
print ("Player 1: " .. tostring(player1.position))
print ("Player 2 :" .. tostring(player2.position))