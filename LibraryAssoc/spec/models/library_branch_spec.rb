require 'rails_helper'

describe LibraryBranch do
  subject(:branch) { LibraryBranch.first }

  it "has a shelf" do
    expect(branch.shelves.first.id).to be(1)
  end

  it "has a book" do
    expect(branch.books.first.id).to be(1)
  end

  it "has lent a book" do
    expect(branch.lent_books.first.id).to be(1)
  end

  it "has a patron" do
    expect(branch.patrons.first.id).to be(1)
  end
end
