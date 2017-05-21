require 'rails_helper'

describe Lending do
  subject(:lending) { Lending.first }

  it "has a borrowed book" do
    expect(lending.borrowed_book.id).to be(1)
  end

  it "has a borrower" do
    expect(lending.borrower.id).to be(2)
  end

  it "has a library" do
    expect(lending.library.id).to be(1)
  end
end
