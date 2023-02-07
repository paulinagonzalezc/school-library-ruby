require 'json'
require 'fileutils'
require_relative '../student'

def save_book
  arr = []
  @books.each do |book|
    obj = {
      'title' => book.title,
      'author' => book.author
    }
    arr.push(obj)
  end
  FileUtils.mkdir_p('data')
  File.write('./data/books.json', JSON.generate(arr))
  puts 'Info saved successfully'
end

def save_person
  arr = []
  @persons.each do |person|
    obj = {
      'type' => person.class.name,
      'name' => person.name,
      'age' => person.age
    }
    arr.push(obj)
  end
  FileUtils.mkdir_p('data')
  File.write('./data/people.json', JSON.generate(arr))
  puts 'People saved successfully'
end