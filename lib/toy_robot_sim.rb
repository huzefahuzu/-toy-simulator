require_relative 'game'
require_relative 'setting'

# Toy Robot Simulator
# Users interact with the game via this method

def play_game
  include Setting
  t = Game.new

  print_intro
  choice = gets.chomp.downcase

  # check valid choice
  while !(choice =~ /^(file|stdin)$/)
    print "Choose 'file' or 'stdin': "
    choice = gets.chomp.downcase
  end

  case choice
    # input from the command line
    when "stdin"
      print_instructions
      input = gets.chomp.upcase
      while !(input === "EXIT")
          t.commands(input)
          print "> "
          input = gets.chomp.upcase
      end
  end
  print_exit
end

# execute the file only if run directly from terminal
# prevents the game from automatically running when using test file
if __FILE__ == $0
  play_game
end
