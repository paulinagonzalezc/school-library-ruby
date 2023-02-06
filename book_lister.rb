require_relative data_lister
class BookLister < DataLister
  def list_data(books)
    books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end
end
