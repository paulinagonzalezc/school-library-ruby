require 'json'
require 'fileutils'
require_relative '../book'
require_relative '../student'
require_relative '../teacher'
require_relative '../rental'

def load_data
  puts 'LOADING DATA...'
  load_books
  load_people
  load_rentals
end

def load_books
  book_data = []
  book_data = JSON.parse(File.read('./data/books.json')) if File.exist?('./data/books.json')
  book_data.each do |item|
    book = Book.new(item['title'], item['author'])
    @books << book
  end
end

def load_people
  people_data = []
  people_data = JSON.parse(File.read('./data/people.json')) if File.exist?('./data/people.json')
  people_data.each do |item|
    person = Student.new(item['age'], item['name'], item['parent_permission']) if item['type'] == 'Student'
    person = Teacher.new(item['age'], item['name'], item['specialization']) if item['type'] == 'Teacher'
    @persons << person
  end
end

def load_rentals
  rental_data = []
  rental_data = JSON.parse(File.read('./data/rentals.json')) if File.exist?('./data/rentals.json')
  rental_data.each do |item|
    rental = Rental.new(item['date'], @books[item['book']], @persons[item['person']])
    @rentals << rental
  end
end
