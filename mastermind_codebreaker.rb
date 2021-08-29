module Mastermind_codebreaker
  class Game
    attr_reader :players, :secret_code, :code_colors, :clue_colors, :rounds, :history

    def initialize 
      @players = {
        codebreaker: {
          name: "Player 1"
        },
        codemaker: {
          name: "Computer"
        }
      }
      @secret_code = []
      @code_colors = ["Red", "Purple", "Blue", "Green", "Yellow", "Orange"]
      @clue_colors = ["Black", "White"]
      @rounds = 12
      @history = []
    end # initialize

    def generate_random_secret_code
      4.times do
        rand_num = rand 6
        secret_code.push(code_colors[rand_num])
      end
      return secret_code
    end

    def game_loop
      # codemaker decides the secret code, in this case it will be randomly generated.
      generate_random_secret_code
      # codebreaker begins guessing the code by typing in a color until all the slots are filled.
      # codemaker then evaluates for a match, providing appropriate feedback.
      # this repeats until the code is guessed, or there are no more rounds.
    end # core_loop

    def intro
      # select game mode, and get player names.
    end


  end # class Game
end # module Mastermind_codebreaker

include Mastermind_codebreaker
p new_game = Game.new.game_loop