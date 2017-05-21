require 'rails_helper'

describe BookDeal do
  subject(:book_deal) { BookDeal.first }

  it "has an author" do
    expect(book_deal.author.id).to be(3)
  end

  it "has a publisher" do
    expect(book_deal.publisher_id).to be(1)
  end

  it "has a book" do
    expect(book_deal.book.id).to be(1)
  end
end
