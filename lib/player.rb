
class Player

    attr_reader :token

    def initialize(token)
        @token = token if token == "O" || token == "X"
    end
end

