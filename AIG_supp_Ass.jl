import Pkg
using Pkg
Pkg.add("DataStructures") #for stacks and queues
using DataStructures


function worldDefinition() #A function that defines the objects in the Blocks world
#Specifying the objects to be moved
println("How many stored objects are there? (These are objects to be moved/stored, e.g Blocks)")
numberOfBlocks = parse(Int, readline())

blocksArray = Array{String}(undef, numberOfBlocks)
for i in 1:numberOfBlocks
    println("Name stored Object number ", i)
    blocksArray[i] = readline()
end

println("How many storage objects are there? (These are objects that carry/store the stored objects, e.g a box or table)")
numberOfstorObjects = parse(Int, readline())

storageObjArray = Array{String}(undef, numberOfstorObjects)
storageLimit = Array{Int}(undef, numberOfstorObjects)
for i in 1:numberOfstorObjects
    println("Name storage Object number ", i)
    storageObjArray[i] = readline()
    println("What is its limit?")
    storageLimit[i] = parse(Int, readline())
end

actualObjContentArray = Array{Array}(undef, numberOfstorObjects) #Define the world as array of carrier objects

#Defining storage spaces as stacks
for i in 1:numberOfstorObjects
    for j in 1:numberOfBlocks
    actualObjContentArray[i] = Array{Stack}(undef, numberOfBlocks) #define carrier objects as arrays with the capacity of the number of blocks
    actualObjContentArray[i][j] = Stack{String}() #define each storage position in all carrier objects as a stack

end
end
end


function worldInitial() #A function to initialize the world

for i in 1:numberOfstorObjects
    for j in 1:numberOfBlocks
    empty!(actualObjContentArray[i][j]) #setting storage/carrier objects to empty
    #Array{Stack}(undef, numberOfBlocks)
end
end

println("State Objects from bottom to top (Where objects are on top of each other)")
for i in 1:numberOfBlocks
println("Where is ", blocksArray[i])
index = findall(x->x== readline(), storageObjArray)
println("Is it on top of another stored object? (e.g another block) Reply Y or N")
verticalPos = readline()
if (verticalPos = "Y")
    println("What object is it lying on?"
    bottomIndex = findall(x->x== readline(), actualObjContentArray)
    push!(actualObjContentArray[bottomIndex], blocksArray[i])
else
    push!(actualObjContentArray[index][i], "Block A")
end
end
end

#Show user current configuration of storage/carrier objects
displayDict = Dict(storageObjArray[1]

















push!(actualObjContentArray[2][3], "Block A")

println(actualObjContentArray[2][1])


blocksArray[1] = "Block A"


print(blocksArray[1])
