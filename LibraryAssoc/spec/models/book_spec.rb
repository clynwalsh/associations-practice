require 'rails_helper'

describe Book do
  subject(:book) { Book.first }

  it "has an author" do
    expect(book.author.id).to be(3)
  end

  it "has a publisher" do
    expect(book.publisher.id).to be(1)
  end

  it "was sold in a book deal" do
    expect(book.book_deal.id).to be(1)
  end

  it "lives on a shelf" do
    expect(book.shelf.id).to be(1)
  end

  it "belongs to a library" do
    expect(book.library.id).to be(1)
  end

  it "has been lent" do
    expect(book.lendings.first.id).to be(1)
  end

  it "has a borrower" do
    expect(book.borrowers.first.id).to be(1)
  end

  it "has been reviewed" do
    expect(book.reviews.first.id).to be(1)
  end

  it "has a reviwer" do
    expect(book.reviewers.first.id).to be(4)
  end
end
