require 'rails_helper'

describe Person do
  subject(:author) { Person.first }
  let(:reader) { Person.find(2) }
  let(:reviewer) { Person.find(4) }

  context "author" do
    it "has authored books" do
      expect(author.authored_books.first.id).to be(2)
    end

    it "has gotten a book deal" do
      expect(author.book_deals.first.id).to be(2)
    end

    it "has a publisher" do
      expect(author.publishers.first.id).to be(1)
    end

    it "has reviews of books authored" do
      expect(author.reviews_of_authored_books.first.id).to be(2)
    end
  end

  context "reader" do
    it "has borrowed a book" do
      expect(reader.borrowed_books.first.id).to be(1)
    end
  end

  context "reviewer" do
    it "has written a book review" do
      expect(reviewer.book_reviews.first.id).to be(1)
    end

    it "has a reviewed book" do
      expect(reviewer.books_reviewed.first.id).to be(1)
    end
  end


end
