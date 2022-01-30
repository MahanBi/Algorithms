function makelists(N, InitMake)::Array
    all_board::Array = []
    for _ = 1:InitMake
        one_board::Array = []
        for __ = 1:N
            append!(one_board, rand(1:N))
        end
        append!(one_board, 0)
        append!(all_board, [one_board])
    end
    return all_board
end

function crossover(list::Array)::Array
    len = length(list)
    N = length(list[1])
    for i = 1:2:len
        append!(list, [[list[i][1:N ÷ 2] ; list[i+1][N ÷ 2+1:N-1] ; 0]])
        append!(list, [[list[i+1][1:N ÷ 2] ; list[i][N ÷ 2+1:N-1] ; 0]])
    end
    return list
end

function mutation(list::Array, rate, N)::Array
    len = length(list)
    unique_list::Array = [len ÷ 2:len-1;]
    println(unique_list)
    for i = range(len ÷ 2)
        
    end
    return list
end

function fitness()::Array
    
end

function main()::Nothing
    list = makelists(4, 200)
    list = crossover(list)
    list = mutation(list, 0.8, 4)
    print(length(list))
    return nothing
end
main()

