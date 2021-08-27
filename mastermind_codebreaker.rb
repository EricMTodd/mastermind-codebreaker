module Mastermind_codebreaker
  class Game

    def game_loop
      "Hello from game_loop!"
      # codemaker decides the secret code, in this case it will be randomly generated.
      # codebreaker begins guessing the code by typing in a color until all the slots are filled.
      # codemaker then evaluates for a match, providing appropriate feedback.
      # this repeats until the code is guessed, or there are no more rounds.
    end # core_loop

    def intro
      # select game mode, and get player names.
    end

    def initialize 
      @players = {
        codebreaker: {
          name: "Player 1"
        },
        codemaker: {
          name: "Computer"
        }
      }
      @code_colors = ["Red", "Purple", "Blue", "Green", "Yellow", "Orange"]
      @clue_colors = ["Black", "White"]
      @rounds = 12
      @history = []
    end # initialize
  end # class Game
end # module Mastermind_codebreaker

include Mastermind_codebreaker
new_game = Game.new