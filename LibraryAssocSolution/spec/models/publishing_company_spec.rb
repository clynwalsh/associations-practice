require 'rails_helper'

describe PublishingCompany do
  subject(:publisher) { PublishingCompany.first }

  it "has made a book deal" do
    expect(publisher.book_deals.first.id).to be(1)
  end

  it "has published an author" do
    expect(publisher.published_authors.first.id).to be(1)
  end

  it "has published a book" do
    expect(publisher.published_books.first.id).to be(1)
  end
end
