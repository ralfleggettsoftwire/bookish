# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
fitzgerald = Author.create(
  name: 'Francis Scott Fitzgerald',
  born: Date.parse('1896-09-24'),
  died: Date.parse('1940-12-21'),
  nationality: 'American'
)

gatsby = Book.create(
  title: 'The Great Gatsby',
  genre: 'Fiction',
  first_published: Date.parse('1925-04-10'),
  language: 'English',
  ISBN: '9780684801520'
)

gatsby_copy_1 = Copy.create(
  status: 'on loan',
  borrower: 'John Smith',
  due_date: Date.parse('2022-10-01')
)

gatsby_copy_2 = Copy.create(status: 'available')

jazz_age = Book.create(
  title: 'Tales of the Jazz Age',
  genre: 'Short Fiction Collection',
  first_published: Date.parse('1922-09-22'),
  language: 'English',
  ISBN: '1434100014'
)

jazz_age_copy_1 = Copy.create(status: 'available')
jazz_age_copy_2 = Copy.create(status: 'available')
jazz_age_copy_3 = Copy.create(status: 'available')

fitzgerald.books << gatsby
fitzgerald.books << jazz_age

gatsby.copies << gatsby_copy_1
gatsby.copies << gatsby_copy_2

jazz_age.copies << jazz_age_copy_1
jazz_age.copies << jazz_age_copy_2
jazz_age.copies << jazz_age_copy_3