using Random

struct NQueenData
    InitMake::Int16
    N::Int8
    try_num::Int8
    NQueenData(InitMake, N, try_num) = new(InitMake, N, try_num)
end;

function makelists(N, InitMake)::Array
    all_board::Array = []
    for i = 1:InitMake
        one_board::Array = []
        for o = 1:N
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

function mutation()::Array
    
end

function fitness()::Array
    
end

function main()
    mydt = NQueenData(200, 4, 100)
    list = makelists(4, 200)
    list = crossover(list)
end
main()

