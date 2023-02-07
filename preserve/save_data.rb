require 'json'
require 'fileutils'

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
  puts 'Books saved successfully'
end
