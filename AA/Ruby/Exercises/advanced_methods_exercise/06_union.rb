# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

# each, map, select, all, any?, none?, one?, count, sum, mix/max, flatten
def union(*args)
    args.flatten
end

p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
