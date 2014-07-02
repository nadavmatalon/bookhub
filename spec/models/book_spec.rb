require 'rails_helper'

context "Book" do 

	it "has a title" do
		book = Book.create(title: "The Hobbit")
		expect(book.title).to eq "The Hobbit"
	end

	it "has an author" do
		book = Book.create(title: "The Hobbit", authors: [Author.create(name: "Tolkin")])
		expect(book.authors.first.name).to eq "Tolkin"
	end

	it "can have more than one author" do
		book = Book.create(title: "The Hobbit")
		author_1 = Author.create(name: "Tolkin")
		author_2 = Author.create(name: "Tolkin_2")
		expect(book.authors.count).to eq 0
		book.authors << author_1
		expect(book.authors.count).to eq 1
		book.authors << author_2
		expect(book.authors.count).to eq 2
		expect(book.authors.first.name).to eq "Tolkin"
		expect(book.authors.second.name).to eq "Tolkin_2"
	end

end
