import Pkg
using Pkg
Pkg.add("DataStructures") #for stacks and queues
using DataStructures

function worldDefinition() #A function that defines the objects in the Blocks world
#Specifying the objects to be moved
println("How many stored objects are there? (These are objects to be moved/stored)")
numberOfBlocks = parse(Int, readline())

blocksArray = Array{String}(undef, numberOfBlocks)
for i in 1:numberOfBlocks
    println("Name stored Object number ", i)
    blocksArray[i] = readline()
end

println("How many storage objects are there? (These are objects that carry/store the stored objects)")
numberOfstorObjects = parse(Int, readline())

storageObjArray = Array{String}(undef, numberOfstorObjects)
storageLimit = Array{Int}(undef, numberOfstorObjects)
for i in 1:numberOfstorObjects
    println("Name storage Object number ", i)
    storageObjArray[i] = readline()
    println("What is its limit?")
    storageLimit[i] = parse(Int, readline())
end

actualObjContentArray = Array{Array}(undef, numberOfstorObjects)

#Assign Array objetcs within
for i in 1:numberOfstorObjects
    for j in 1:numberOfBlocks
    actualObjContentArray[i][j] = Stack{String}()
    #Array{Stack}(undef, numberOfBlocks)
end
end
end

#function worldInitial () #A function to initialize the world

for i in 1:numberOfstorObjects
    for j in 1:numberOfBlocks
    empty!(actualObjContentArray[i][j]) #setting storage/carrier objects to empty
    #Array{Stack}(undef, numberOfBlocks)
end
end

#Show user current configuration of storage/carrier objects
displayDict = Dict(

















push!(actualObjContentArray[2][3], "Block A")

println(actualObjContentArray[2][1])


blocksArray[1] = "Block A"


print(blocksArray[1])
