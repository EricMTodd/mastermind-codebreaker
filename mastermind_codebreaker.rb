require 'pry'

module Mastermind_codebreaker
  class Game
    attr_reader :players, :secret_code, :code_colors, :clue_colors, :rounds, :history
    attr_accessor :guesses

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
      @history = []
      @code_colors = ["Red", "Purple", "Blue", "Green", "Yellow", "Orange"]
      @clue_colors = ["Black", "White"]
      @rounds = {
        limit: 12,
        current_round: 1
      }
    end # initialize

    def generate_random_secret_code
      4.times do
        rand_num = rand 6
        secret_code.push(code_colors[rand_num])
      end
      return secret_code
    end # generate_random_secret_code

    def get_guess
      puts("Hello from get_guess!")
      @round_data = {
        round: rounds[:current_round],
        guess: [],
        clues: []
      }

      def validate_guess(guess)
        if !code_colors.include? guess
          puts("Invalid guess, try again.")
          if @round_data[:guess].length == 0
            guess_one
          elsif @round_data[:guess].length == 1
            guess_two
          elsif @round_data[:guess].length == 2
            guess_three
          else
            guess_four
          end
        else
          @round_data[:guess].push(guess)
        end
      end # validate_guess

      def guess_one
        print("Guess one: ")
        guess = gets.downcase.capitalize.chomp
        validate_guess(guess)
      end # guess_one
      guess_one
      def guess_two
        print("Guess two: ")
        guess = gets.downcase.capitalize.chomp
        validate_guess(guess)
      end # guess_two
      guess_two
      def guess_three
        print("Guess three: ")
        guess = gets.downcase.capitalize.chomp
        validate_guess(guess)
      end # guess_three
      guess_three
      def guess_four
        print("Final guess: ")
        guess = gets.downcase.capitalize.chomp
        validate_guess(guess)
      end # guess_four
      guess_four
    end # get_guess

    def game_loop
      # codemaker decides the secret code, in this case it will be randomly generated.
      generate_random_secret_code
      # codebreaker begins guessing the code by typing in a color until all the slots are filled.
      puts("Round #{rounds[:current_round]}")
      get_guess
      # codemaker then evaluates for a match, providing appropriate feedback.
      # this repeats until the code is guessed, or there are no more rounds.
    end # game_loop

    def intro
      # select game mode, and get player names.
    end


  end # class Game
end # module Mastermind_codebreaker

include Mastermind_codebreaker
p new_game = Game.new.game_loop