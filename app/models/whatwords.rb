require 'what3words'

what3words = What3Words::API.new(:key => ENV['WHAT3WORDS_KEY'])

whats = what3words.words_to_position["prom", "cape", "pump"]