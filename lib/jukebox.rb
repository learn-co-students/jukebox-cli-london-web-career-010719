songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help

    puts
    "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end


def play(songs)
    puts "Please enter a song name or number"
    choice = gets.chomp
    
    songs.each_with_index do |song, index|
        if choice.to_i == (index+1) || choice == song
            puts "Playing #{song}"
            break
        else
            puts "Invalid input, please try again"
            break
        end
        
    end
end


def list(songs)
    
    songs.each_with_index do | val, index|
        puts " #{index+1}. #{val}"
    end

end


def exit_jukebox

puts "Goodbye"

end


def run(songs)
help

response = ""

while response
    puts "Please enter a command:"
    response  = gets.downcase.chomp
    
    case response
        
    when "help"
        help
        
    when "play"
    
        play(songs)
        
    when "list"
        list(songs)
        
    when "exit"
        exit_jukebox
        break
    end
end
end
