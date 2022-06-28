function sorting(arr::Array)::Array
    for index ∈ 2:length(arr)
        target = arr[index]
        j = index
        while (j ≠ 1) && (target < arr[j-1])
            arr[j] = arr[j-1]
            j -= 1
        end
        arr[j] = target
    end
    return arr
end

function main()::Nothing
    A = [12,3,55,7,4,3,1,8,99,13]
    result = sorting(A)
    println(result)
end
main()
