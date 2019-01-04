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

  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end

def list(songs)

 songs.each_with_index do |artist_and_title, index|
   puts "#{index.to_i + 1}. #{artist_and_title}"
 end
end

def play(songs)

  puts "Please enter a song name or number: "

     input = gets.chomp

        if (1..9).cover?(input.to_i)
            puts "Now playing #{songs[input.to_i-1]}"
        elsif songs.include? input
          puts "Now playing #{input}"
        else
            puts "Invalid input, please try again"
        end
      end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help

loop {

  choice = nil

  puts "Please enter a command: "

    choice = gets.chomp

  case choice

    when "help"
    help

  when "list"
    list(songs)

  when "play"
    play(songs)

  when "exit"
    exit_jukebox
    break

  else puts "Please enter a valid command"
end }
end

run(songs)
