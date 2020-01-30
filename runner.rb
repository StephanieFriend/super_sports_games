require './lib/games'
require './lib/event'
require './lib/print_out'

print_out = PrintOut.new

game = Games.new(print_out.enter_year)

event = Event.new(print_out.enter_event_name, print_out.initial_enter_age)
game.add_event(event)
p game.summary