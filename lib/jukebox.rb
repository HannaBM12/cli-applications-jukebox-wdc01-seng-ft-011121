# Add your code here

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

def list(songs)  # we can also use each_with_index
  # index = 0
  # songs.map{|each|
  #   index +=1
  #   puts "#{index}. #{each}" }
  songs.each_with_index {|song, index|
    puts "#{index + 1}. #{song}"
    }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  array = (1..9).to_a
  if array.include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i - 1]}"
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
  puts "Please enter a command:"
  user_input = gets.strip
  return exit_jukebox if user_input == "exit"
    case user_input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    else
      puts "Invalid input"
    end
end
