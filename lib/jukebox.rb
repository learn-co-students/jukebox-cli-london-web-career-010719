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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  valid_nums = [1,2,3,4,5,6,7,8,9]
  songs.each_with_index do |song, index|
    if request == song || valid_nums.include?(request.to_i)
      puts "Playing #{song}"
      break
    else
      puts "Invalid input, please try again"
      break
    end
  end
end

def list(songs)
  songs.each_with_index {|elem, index| puts "#{index + 1}. #{elem}" }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
   help
   user_response = ""
   until user_response == "exit"
     puts "Please enter a command:"
     user_response = gets.chomp
     case user_response
     when "play"
       play(songs)
     when "list"
       list(songs)
     when "help"
       help
     when "exit"
       exit_jukebox
     else
       puts "Invalid input, please try again"
     end
   end
 end
