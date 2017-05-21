# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Person.create(name: 'Oscar Alvarez')
p2 = Person.create(name: 'Michael Coates')
p3 = Person.create(name: 'Ali Harris')
p4 = Person.create(name: 'Tommy Duek')

lb1 = LibraryBranch.create(name: 'Flatbush Branch', address: 'Linden Blvd, Brooklyn')
lb2 = LibraryBranch.create(name: 'Park Slope Branch', address: '9th Street, Brooklyn')

s1 = Shelf.create(library_id: lb1.id, location: 'A3')
s2 = Shelf.create(library_id: lb2.id, location: 'F4')

b1 = Book.create(title: 'How to Win at Bootcamp', author_id: p3.id, shelf_id: s1.id)
b2 = Book.create(title: 'How to Be Better at Ruby', author_id: p1.id, shelf_id: s2.id)

pc1 = PublishingCompany.create(name: 'App Academy Press, Ltd', address: '25th Street, NYC')

r1 = Review.create(text: 'this book is so great!', book_id: b1.id, reviewer_id: p4.id)
r2 = Review.create(text: 'i am so much better at ruby now!', book_id: b2.id, reviewer_id: p2.id)

bd1 = BookDeal.create(book_id: b1.id, author_id: p3.id, publisher_id: pc1.id)
bd2 = BookDeal.create(book_id: b2.id, author_id: p1.id, publisher_id: pc1.id)

l1 = Lending.create(book_id: b1.id, borrower_id: p2.id, library_id: lb1.id)
l2 = Lending.create(book_id: b1.id, borrower_id: p1.id, library_id: lb1.id)
l3 = Lending.create(book_id: b2.id, borrower_id: p4.id, library_id: lb2.id)
l4 = Lending.create(book_id: b2.id, borrower_id: p3.id, library_id: lb2.id)
