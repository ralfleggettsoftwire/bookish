# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user_1 = User.create(
  email: "ralf.leggett@softwire.com",
  name: "Ralf",
  password: "Testing",
  password_confirmation: "Testing"
)

user_2 = User.create(
  email: "made.up@gmail.com",
  name: "John",
  password: "Testing",
  password_confirmation: "Testing"
)

fitzgerald = Author.create(
  name: 'Francis Scott Fitzgerald',
  born: Date.parse('1896-09-24'),
  died: Date.parse('1940-12-21'),
  nationality: 'American'
)

gatsby = Book.create(
  title: 'The Great Gatsby',
  genre: 'American Literature',
  first_published: Date.parse('1925-04-10'),
  language: 'English',
  ISBN: '9780684801520'
)

gatsby_copy_1 = Copy.create(
  status: 'on loan',
  due_date: Date.parse('2022-10-01')
)

gatsby_copy_2 = Copy.create(status: 'available')

gatsby_copy_3 = Copy.create(
  status: 'on loan',
  due_date: Date.parse('2022-10-10')
)

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

tender_night = Book.create(
  title: 'Tender is the Night',
  genre: 'American Literature',
  first_published: Date.parse('1934-04-12'),
  language: 'English',
  ISBN: '9780241341483'
)

tender_night_copy_1 = Copy.create(
  status: 'on loan',
  due_date: Date.parse('2022-10-28')
)
tender_night_copy_2 = Copy.create(status: 'available')
tender_night_copy_3 = Copy.create(status: 'available')

fitzgerald.books << gatsby
fitzgerald.books << jazz_age
fitzgerald.books << tender_night

gatsby.copies << gatsby_copy_1
gatsby.copies << gatsby_copy_2
gatsby.copies << gatsby_copy_3

jazz_age.copies << jazz_age_copy_1
jazz_age.copies << jazz_age_copy_2
jazz_age.copies << jazz_age_copy_3

tender_night.copies << tender_night_copy_1
tender_night.copies << tender_night_copy_2
tender_night.copies << tender_night_copy_3

user_1.copies << gatsby_copy_1
user_2.copies << gatsby_copy_3

user_1.copies << tender_night_copy_1

harper_lee = Author.create(
  name: 'Nelle Harper Lee',
  born: Date.parse('1926-04-28'),
  died: Date.parse('2016-02-19'),
  nationality: 'American'
)

mockingbird = Book.create(
  title: 'To Kill a Mockingbird',
  genre: 'Adolescent Literature',
  first_published: Date.parse('1960-07-11'),
  language: 'English',
  ISBN: '9780099419785 '
)

mockingbird_copy_1 = Copy.create(status: 'available')
mockingbird_copy_2 = Copy.create(status: 'available')

harper_lee.books << mockingbird

mockingbird.copies << mockingbird_copy_1
mockingbird.copies << mockingbird_copy_2