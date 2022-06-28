include("Merge-Sort/main.jl")

function merge_sort(A::Array, B::Array)::Array
    
end

function main()::Nothing
    A::Array = [1,2,3,4,5,8,12,43,55]
    B::Array = [4,5,19,33]
    result = merge_sort(A,B)
    printstyled()
end
main()