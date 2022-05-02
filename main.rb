=begin

Nouns???
Player
- Holds the score of the player
- Holds the lives of the player
Question
- Auto generates the question to ask (on init)
- Holds the text of the questions to ask
Game
- Holds two Player and some Questions
- Calculates the winner if any, each turn
- Accepts user input
- Advances the game state by 1 each time, tracking the current player


=end

require './game'

game = Game.new()
game.start_game