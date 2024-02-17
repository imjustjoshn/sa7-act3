rooms = {
    "Room 1" => 5,
    "Room 2" => 10,
    "Room 3" => 15
}

score = 0

loop do
    puts "Choose a room (1-3) to enter or 'exit' to end the game: "

    choice = gets.chomp.downcase
    if choice == 'exit'
        break
    else
        choice = choice.to_i - 1
        room = rooms.keys[choice]
        points = rooms.values[choice]
        score += points

        puts "You entered Room #{choice} and earned #{points} points."
    end
end

puts "Game over! You collected a total of #{score} points."
