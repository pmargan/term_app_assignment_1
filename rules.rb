# frozen_string_literal: true

require 'launchy'
def show_rules
  uri = './docs/rules.html'
  Launchy.open(uri) # do |exception|
  # puts "Attempted to open #{uri} and failed because #{exception}"
  # end
end
