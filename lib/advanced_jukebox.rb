#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
  "Go Go GO" => '< path to this directory >/home/joey/jukebox-cli-london-web-career-010719/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '< path to this directory >/home/joey/jukebox-cli-london-web-career-010719/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '< path to this directory >/home/joey/jukebox-cli-london-web-career-010719/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '< path to this directory >/home/joey/jukebox-cli-london-web-career-010719/audio/Emerald-Park/04.mp3',
  "Wolf" => '< path to this directory >/home/joey/jukebox-cli-london-web-career-010719/audio/Emerald-Park/05.mp3',
  "Blue" => '< path to this directory >/home/joey/jukebox-cli-london-web-career-010719/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '< path to this directory >/home/joey/jukebox-cli-london-web-career-010719/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  my_songs.each {|song, path| puts song}
end


def play(my_songs)
  puts "Please enter a song name:"
  choice = gets.chomp
  my_songs.each {|key, value| open value if choice == key}
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    play(my_songs) if command == "play"
    help if command == "help"
    list(my_songs) if command == "list"
    command = gets.chomp
  end
  exit_jukebox
end
