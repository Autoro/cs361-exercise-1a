# CS 361 Exercise 1a: Ruby Basics
# Name: Alex Miesbauer

class Player
    attr_reader :name, :score

    def initialize(name, score)
        @name = name
        @score = score
    end 
end

def main
    players = []

    for i in 1..50 do
        name = "Player #{ i }"
        score = rand 10..300
        player = Player.new name, score

        players.append player    
    end

    for player in players do
        puts "Ready #{ player.name }! Score: #{ player.score }"
    end
end

if __FILE__ == $0
    main
end