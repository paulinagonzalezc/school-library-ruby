require 'json'
require 'fileutils'
require_relative '../book'

def load_data
  puts 'LOADING...'
  load_books
end

def load_books
  book_data = []
  book_data = JSON.parse(File.read('./data/books.json')) if File.exist?('./data/books.json')
  book_data.each do |item|
    book = Book.new(item['title'], item['author'])
    @books << book
  end
end
