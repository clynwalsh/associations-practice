# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

200.times do
  Person.create!(name: Faker::Name.unique.name)
end

10.times do
  LibraryBranch.create!(
    name: Faker::Address.unique.city,
    address: Faker::Address.unique.street_address)
end

50.times do
  Shelf.create!(
    library_id: LibraryBranch.all.sample.id,
    location: "#{("A".."Z").to_a.sample}#{(1..9).to_a.sample}"
    )
end

100.times do
  Book.create!(
    title: Faker::Book.unique.title,
    author_id: Person.all.sample.id,
    shelf_id: Shelf.all.sample.id
    )
end

5.times do
  PublishingCompany.create!(
    name: Faker::Company.unique.name,
    address: Faker::Address.unique.street_address
  )
end

400.times do
  Review.create!(
    text: Faker::StarWars.quote,
    book_id: Book.all.sample.id,
    reviewer_id: Person.all.sample.id
  )
end

Book.all.each do |book|
  BookDeal.create!(
    author_id: book.author_id,
    publisher_id: PublishingCompany.all.sample.id
  )
end

400.times do
  Lending.create!(
    book_id: Book.all.sample.id,
    borrower_id: Person.all.sample.id
  )
end
