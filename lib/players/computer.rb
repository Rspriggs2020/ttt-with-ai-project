
module Players 
    
    class Computer < Player

        WIN_COMBINATIONS = [
            [0, 1, 2], 
            [3, 4, 5],
            [6, 7, 8],
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8],
            [0, 4, 8],
            [2, 4, 6]
        ]

        def move(board)
            if x_count(2, board)
                offense(2,board)
            elsif x_count(0, board)
                offense(0, board)
            else
                offense(1, board)
            end
        end
        
        def x_count(c, board)
            WIN_COMBINATIONS.any? do |x|
                x_count = [board.cells[x[0]], board.cells[x[1]], board.cells[x[2]]].count {|y| y == "X"}
                x_count == c
            end
        end

        def offense(c, board)
            WIN_COMBINATIONS.detect do |x|
                x_count = [board.cells[x[0]], board.cells[x[1]], board.cells[x[2]]].count {|y| y == "X"}
                x_count == c
                input = [board.cells[x[0]], board.cells[x[1]], board.cells[x[2]]].index(" ") + 1
                return input.to_s
            end
        end
    end
end
