require 'rails_helper'

describe Shelf do
  subject(:shelf) { Shelf.first }

  it "has a library" do
    expect(shelf.library.id).to be(1)
  end

  it "has a book" do
    expect(shelf.books.first.id).to be(1)
  end
end
