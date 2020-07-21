import Pkg
using Pkg
Pkg.add("DataStructures") #for stacks and queues
using DataStructures


function worldDefinition() #A function that defines the objects in the Blocks world
#Specifying the objects to be moved
println("How many stored objects are there? (These are objects to be moved/stored, e.g Blocks)")
global numberOfBlocks = parse(Int, readline())

global blocksArray = Array{String}(undef, numberOfBlocks)
for i in 1:numberOfBlocks
    println("Name stored Object number ", i)
    blocksArray[i] = readline()
end

println("How many storage objects are there? (These are objects that carry/store the stored objects, e.g a box or table)")
global numberOfstorObjects = parse(Int, readline())

global storageObjArray = Array{String}(undef, numberOfstorObjects)
global storageLimit = Array{Int}(undef, numberOfstorObjects)
for i in 1:numberOfstorObjects
    println("Name storage Object number ", i)
    storageObjArray[i] = readline()
    println("What is its limit?")
    storageLimit[i] = parse(Int, readline())
end

global actualObjContentArray = Array{Array}(undef, numberOfstorObjects) #Define the world as array of carrier objects

#Defining storage spaces as stacks
for i in 1:numberOfstorObjects
    actualObjContentArray[i] = Array{Stack}(undef, numberOfBlocks) #define carrier objects as arrays with the capacity of the number of blocks
    for j in 1:numberOfBlocks
    actualObjContentArray[i][j] = Stack{String}() #define each storage position in all carrier objects as a stack
end
end
end
worldDefinition()

function worldInitial() #A function to initialize the world
    #Setting storage spaces to empty stacks
    for i in 1:numberOfstorObjects
        actualObjContentArray[i] = Array{Stack}(undef, numberOfBlocks) #define carrier objects as arrays with the capacity of the number of blocks
        for j in 1:numberOfBlocks
        actualObjContentArray[i][j] = Stack{String}() #define each storage position in all carrier objects as a stack
    end
    end

println("State Objects from bottom to top (Where objects are on top of each other)")
for i in 1:numberOfBlocks
println("Where is ", blocksArray[i])
global index = findall(x->x== readline(), storageObjArray)
println("Is it on top of another stored object? (e.g another block) Reply Y or N")
global verticalPos = readline()
if (verticalPos = "Y")
    println("What object is it lying on?"
    global bottomIndex = findall(x->x== readline(), actualObjContentArray)
    push!(actualObjContentArray[bottomIndex], blocksArray[i])
else
    push!(actualObjContentArray[index][i], blocksArray[i])
end
end
end

function setGoal()
    println("State Objects from bottom to top (Where objects are on top of each other)")
    println("Let us define the goal")
    planArray = actualObjContentArray
    for i in 1:numberOfBlocks
        println("In/On which storage Object should ", blocksArray[i], "be?")
        global newindex = findall(x->x== readline(), storageObjArray)
        println("Is it on top of another stored object? (e.g another block) Reply Y or N")
        global vPosition = readline()
        if (vPosition = "Y")
            println("What object is it lying on?"
            global underIndex = findall(x->x== readline(), planArray)
            push!(planArray[bottomIndex], blocksArray[i])
        else
            push!(planarray[newIndex][i], blocksArray[i])
        end
    end
    println("The Plan is as shown below")
    for in 1:numberOfstorObjects
        println(storageObjArray[i], ": ", planArray[i])
    end
end

function plan()





#Show user current configuration of storage/carrier objects
displayDict = Dict(storageObjArray[1]

















push!(actualObjContentArray[2][3], "Block A")

println(actualObjContentArray[2][1])


blocksArray[1] = "Block A"


print(blocksArray[1])
