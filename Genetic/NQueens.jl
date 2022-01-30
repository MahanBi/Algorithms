using Random

struct NQueenData
    InitMake::Int16
    N::Int8
    #board::Array{Int8}
    NQueenData(InitMake, N) = new(InitMake, N)
end;

function makelists(DATAS::NQueenData)::Array
    all_board::Array = []
    for i = 1:DATAS.InitMake
        one_board::Array = []
        for o = 1:DATAS.N
            append!(one_board, rand(1:DATAS.N));
        end
        append!(all_board, [one_board])
    end
    return all_board
end

function crossover()::Array
    
end

function mutation()::Array
    
end

function fitness()::Array
    
end

mydt = NQueenData(200, 4)
list = makelists(mydt)

