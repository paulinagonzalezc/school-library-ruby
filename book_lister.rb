require_relative 'base_lister'
class BookLister < BaseLister
  def list_data(books)
    books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end
end
