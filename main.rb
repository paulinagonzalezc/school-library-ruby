require './app'
require './menu'

class Options
  include Menu

  def initialize
    @app = App.new(self)
    @app.load
    puts 'Welcome to School Library App!'
    show_options
  end
end

def main
  Options.new
end

main
