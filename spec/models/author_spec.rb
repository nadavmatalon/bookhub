require 'rails_helper'

context "Author" do 

	it "has a name" do
		author = Author.create(name: "Tolkein")
		expect(author.name).to eq "Tolkein"
	end

	it "has a book" do
		author = Author.create(name: "Tolkin", books: [Book.create(title: "Lord of the Rings")])
		expect(author.books.first.title).to eq "Lord of the Rings"
	end

	it "can have more than one book" do
		author = Author.create(name: "Tolkein")
		book_1 = Book.create(title: "The Hobbit")
		book_2 = Book.create(title: "Lord of the Rings")
		expect(author.books.count).to eq 0
		author.books << book_1
		expect(author.books.count).to eq 1
		author.books << book_2
		expect(author.books.count).to eq 2
		expect(author.books.first.title).to eq "The Hobbit"
		expect(author.books.second.title).to eq "Lord of the Rings"
	end

end