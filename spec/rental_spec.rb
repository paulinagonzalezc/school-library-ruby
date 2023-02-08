require_relative '../book'
require_relative '../student'
require_relative '../rental'

describe Rental do
  context 'When testing the Rental class' do
    book_title = 'Game of Thrones'
    book_author = 'George R Martin'
    book = Book.new(book_title, book_author)
    student = Student.new(20, 'Paulina', parent_permission: true)
    date = '02/08/2023'
    rental = Rental.new(date, book, student)

    it 'Validate the date of the rental' do
      expect(rental.date).to eq date
    end

    it 'Validate the student of the rental' do
      expect(rental.person).to eq student
    end

    it 'Validate the book of the rental' do
      expect(rental.book).to eq book
    end
  end
end