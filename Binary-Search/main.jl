function binary_search(list, val)
    len = length(list)
    if len == 1 
        if list[1] == val
            return "Found"
        else
            return "Not Found"
        end
    else
        mid = len ÷ 2
        if val > list[mid]
            return binary_search(list[mid+1:end], val)
        else
            return binary_search(list[1:mid], val)
        end
    end
end


function main()
    list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
    println(binary_search(list, 13))
end
main()
