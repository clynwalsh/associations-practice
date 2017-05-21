require 'rails_helper'

describe PublishingCompany do
  subject(:publisher) { PublishingCompany.first }

  it "has a book deal" do
    expect(publisher.book_deals.first.id).to be(1)
  end

  it "has a published author" do
    expect(publisher.published_authors.first.id).to be(1)
  end

  it "has a published book" do
    expect(publisher.published_books.first.id).to be(1)
  end
end
