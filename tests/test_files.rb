$: << "../lib"
require "game"
require "test/unit"

class TestFiles < Test::Unit::TestCase
  def setup
    @game = Game.new
  end

  def test_file_input_results
    File.open("./tests/robot_commands_1.txt") do |f|
      commands = f.readlines
      commands.each do |x|
        next if x.chomp == ""
        @game = @game.commands(x.chomp)
      end
    end
    assert_equal([3, 3], @game.robot.robot[:position])
    assert_equal("WEST", @game.robot.robot[:direction])

    @game = Game.new
    File.open("./tests/robot_commands_1.txt") do |f|
      commands = f.readlines
      commands.each do |x|
        next if x.chomp == ""
        @game = @game.commands(x.chomp)
      end
    end
    assert_equal([3, 3], @game.robot.robot[:position])
    assert_equal("WEST", @game.robot.robot[:direction])

    @game = Game.new
    File.open("./tests/robot_commands_1.txt") do |f|
      commands = f.readlines
      commands.each do |x|
        next if x.chomp == ""
        @game = @game.commands(x.chomp)
      end
    end
    assert_equal([3, 3], @game.robot.robot[:position])
    assert_equal("WEST", @game.robot.robot[:direction])

    @game = Game.new
    File.open("./tests/robot_commands_1.txt") do |f|
      commands = f.readlines
      commands.each do |x|
        next if x.chomp == ""
        @game = @game.commands(x.chomp)
      end
    end
    assert_equal([3, 3], @game.robot.robot[:position])
    assert_equal("WEST", @game.robot.robot[:direction])
  end
end