function linear_search(list::Array, val)
    for i = list
        if i == val
            return "Found"
        end
    end
    return "Not Found"
end


function main()
    a = [1,2,55,6,-3,-5,3,90,113,9]
    println(linear_search(a, 3))
end
main()