@time function makelists(N, InitMake)::Array
    all_board::Array{Array{Int8}} = []
    for _ = 1:InitMake
        one_board::Array{Int8} = []
        for __ = 1:N
            append!(one_board, rand(1:N))
        end
        append!(one_board, 0)
        append!(all_board, [one_board])
    end
    return all_board
end

@time function crossover(list::Array)::Array
    len = length(list)
    N = length(list[1])
    for i = 1:2:len
        append!(list, [[list[i][1:N ÷ 2] ; list[i+1][N ÷ 2+1:N-1] ; 0]])
        append!(list, [[list[i+1][1:N ÷ 2] ; list[i][N ÷ 2+1:N-1] ; 0]])
    end
    return list
end

@time function mutation(list::Array, rate, N::Int)::Array
    len = length(list)
    unique_list::Array = [len ÷ 2:len-1;]
    for i = 1:(len ÷ 2)
        new_random = rand(1:len ÷ 2)
        unique_list[new_random], unique_list[i] = unique_list[i], unique_list[new_random]
    end
    unique_list = unique_list[1:Int(length(unique_list) * rate)]
    for b = unique_list
        new_field_num = rand(1:N)
        new_value = rand(1:N)
        @show list[b][new_field_num] = new_value
    end
    return list
end

@time function fitness()::Array
    
end

@time function main()::Nothing
    list = makelists(4, 200)
    list = crossover(list)

    list = mutation(list, 0.8, 4)
    # print(length(list))
    return nothing
end
main()

