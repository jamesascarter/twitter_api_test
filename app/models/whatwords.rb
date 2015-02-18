require 'what3words'

what3word = What3Words::API.new(:key => ENV['WHAT3WORDS_KEY'])

def show
  what3word.words_to_position["prom", "cape", "pump"]
end
