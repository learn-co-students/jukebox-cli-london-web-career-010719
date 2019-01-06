def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list (songs)
  songs.each_with_index {|song,index| puts "#{index+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input.to_i.is_a?(Integer) && user_input.to_i<songs.size && user_input.to_i>0
    puts "Playing #{songs[user_input.to_i-1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while 1>0 do
    user_input = ""
    puts "Please enter a command:"
    user_input = gets.chomp
    if user_input == "help"
      help
    elsif user_input == "list"
      list
    elsif user_input == "play"
      play(songs)
    elsif user_input == "exit"
      exit_jukebox
      break
    else
      print "Invalid command. "
    end
  end
end
