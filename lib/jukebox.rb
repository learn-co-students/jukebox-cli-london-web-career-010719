require 'pry'

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
  puts "I accept the following commands:"," - help : displays this help message"," - list : displays a list of songs you can play"," - play : lets you choose a song to play", " - exit : exits this program"
end

def play(songs)
  found = false
  puts "Please enter a song name or number:"
  song_request = gets.chomp

  songs.each_with_index do |song_title, index|
    if song_request == (index+1).to_s || song_request == song_title
      found = true
      puts "Playing #{song_title}"
      break
    end
  end
  puts "Invalid input, please try again" if found == false
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.strip

  until response == "exit"
    case response
      when "list"
        list(songs)
        puts "Please enter a command:"
        response = gets.strip
      when "help"
        help
        puts "Please enter a command:"
        response = gets.strip
      when "play"
        play(songs)
        puts "Please enter a command:"
        response = gets.strip
      else
        puts "command not found, try again"
        response = gets.strip
    end
  end
  exit_jukebox
end
