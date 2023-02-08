require_relative '../book'

describe Book do
  context 'When testing the Book class' do
    title = 'Game of thrones'
    author = 'George R Martin'
    book = Book.new(title, author)

    it 'Validate the title of the book' do
      expect(book.title).to eq title
    end

    it 'Validate the author of the book' do
      expect(book.author).to eq author
    end
  end
end
