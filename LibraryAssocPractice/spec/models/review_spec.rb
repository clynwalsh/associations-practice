require 'rails_helper'

describe Review do
  subject(:review) { Review.first }

  it "has a reviewed book" do
    expect(review.reviewed_book.id).to be(1)
  end

  it "has a reviwer" do
    expect(review.reviewer.id).to be(4)
  end
end
