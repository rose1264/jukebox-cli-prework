#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/rose/.atom/.learn-ide/home/rose1264/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/rose/.atom/.learn-ide/home/rose1264/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/rose/.atom/.learn-ide/home/rose1264/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/rose/.atom/.learn-ide/home/rose1264/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/rose/.atom/.learn-ide/home/rose1264/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/rose/.atom/.learn-ide/home/rose1264/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/rose/.atom/.learn-ide/home/rose1264/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  my_songs.keys.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name"
  song_to_play = gets.chomp
  if !my_songs.keys.include?(song_to_play)
    puts "Invalid input, please try again"
  else
    puts "Now playing #{song_to_play}"
    system 'open ' << my_songs[song_to_play]
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  response = ""
  while response
    puts "Please enter a command:"
    response = gets.chomp
    case response
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    end
  end
end

run(my_songs)
