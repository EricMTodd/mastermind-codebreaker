module Mastermind_codebreaker
  class Game
    attr_accessor :players, :board, :current_turn
    attr_reader :code_marks, :clue_marks
    def initialize 
      @players = {
        codebreaker: {
          name: "Player 1"
        },
        codemaker: {
          name: "Computer"
        }
      }
      @board = {
        secret_code: nil,
        slots: {
          row_one: {
            guesses: [],
            clues: [],
          },
          row_two: {
            guesses: [],
            clues: [],
          },
          row_three: {
            guesses: [],
            clues: [],
          },
          row_four: {
            guesses: [],
            clues: [],
          },
          row_five: {
            guesses: [],
            clues: [],
          },
          row_six: {
            guesses: [],
            clues: [],
          },
          row_seven: {
            guesses: [],
            clues: [],
          },
          row_eight: {
            guesses: [],
            clues: [],
          },
          row_nine: {
            guesses: [],
            clues: [],
          },
          row_ten: {
            guesses: [],
            clues: [],
          },
          row_eleven: {
            guesses: [],
            clues: [],
          },
          row_twelve: {
            guesses: [],
            clues: [],
          },
        }
      }
      @current_turn
      @code_marks = [{name: "Blue", mark: "B"}, {name: "Green", mark: "G"}, {name: "Yellow", mark: "Y"}, {name: "Orange", mark: "O"}]
      @clue_marks = [{name: "Black", mark: "K"}, {name: "White", mark: "W"}]
    end
  end
end

include Mastermind_codebreaker
new_game = Game.new

new_game.board[:slots].each do |index, value|
  puts("#{index}: #{value}")
end