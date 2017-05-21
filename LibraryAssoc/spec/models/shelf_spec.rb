require 'rails_helper'

describe Shelf do
  subject(:shelf) { Shelf.first }

  it "lives in a library" do
    expect(shelf.library.id).to be(1)
  end

  it "holds a book" do
    expect(shelf.books.first.id).to be(1)
  end
end
