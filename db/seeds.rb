# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Clearing existing ebooks..."
Ebook.destroy_all

puts "Creating fake ebooks..."

ebooks_data = [
  {
    title: "The Art of Programming",
    author: "Grace Hopper",
    description: "A comprehensive guide to mastering the fundamentals of computer programming, covering algorithms, data structures, and best practices for writing clean, efficient code.",
    published_date: Date.new(2020, 3, 15),
    isbn: "978-0-123456-78-9",
    genre: "Technology",
    pages: 456
  },
  {
    title: "Journey Through Time",
    author: "H.G. Wells Jr.",
    description: "An epic science fiction adventure that spans centuries, exploring the nature of time travel and its impact on human civilization.",
    published_date: Date.new(2018, 7, 22),
    isbn: "978-0-987654-32-1",
    genre: "Science Fiction",
    pages: 382
  },
  {
    title: "The Mystery of Shadow Lane",
    author: "Agatha Christie II",
    description: "A gripping mystery novel set in a small English village where a series of unexplained disappearances leads to shocking revelations.",
    published_date: Date.new(2019, 11, 5),
    isbn: "978-0-246813-57-9",
    genre: "Mystery",
    pages: 298
  },
  {
    title: "Cooking with Fire",
    author: "Gordon Ramsay Jr.",
    description: "Master the art of flame-based cooking with this comprehensive cookbook featuring recipes from around the world.",
    published_date: Date.new(2021, 5, 18),
    isbn: "978-0-135792-46-8",
    genre: "Cooking",
    pages: 224
  },
  {
    title: "The Last Kingdom",
    author: "Bernard Cornwell III",
    description: "A historical epic set in medieval England, following the life of a warrior torn between two cultures during the Viking invasions.",
    published_date: Date.new(2017, 9, 30),
    isbn: "978-0-864209-75-3",
    genre: "Historical Fiction",
    pages: 512
  },
  {
    title: "Digital Marketing Mastery",
    author: "Seth Godin II",
    description: "Learn how to build a successful online presence and master modern marketing strategies in the digital age.",
    published_date: Date.new(2022, 2, 14),
    isbn: "978-0-975318-64-2",
    genre: "Business",
    pages: 342
  },
  {
    title: "The Dragon's Prophecy",
    author: "J.R.R. Martin",
    description: "An epic fantasy tale of dragons, magic, and destiny, where a young hero must fulfill an ancient prophecy to save the realm.",
    published_date: Date.new(2020, 8, 8),
    isbn: "978-0-159263-48-7",
    genre: "Fantasy",
    pages: 628
  },
  {
    title: "Mindfulness in Modern Life",
    author: "Thich Nhat Hanh Jr.",
    description: "Practical wisdom and exercises for finding peace and presence in our hectic, technology-driven world.",
    published_date: Date.new(2021, 4, 12),
    isbn: "978-0-753951-84-6",
    genre: "Self-Help",
    pages: 276
  },
  {
    title: "The Physics of Everything",
    author: "Brian Cox II",
    description: "An accessible exploration of the fundamental laws that govern our universe, from quantum mechanics to cosmology.",
    published_date: Date.new(2019, 6, 25),
    isbn: "978-0-852741-96-3",
    genre: "Science",
    pages: 418
  },
  {
    title: "Love in the Time of AI",
    author: "Nicholas Sparks Jr.",
    description: "A touching romance that explores human connection in an increasingly digital world, where love transcends technology.",
    published_date: Date.new(2023, 1, 10),
    isbn: "978-0-951357-82-4",
    genre: "Romance",
    pages: 334
  }
]

ebooks_data.each do |ebook_attrs|
  Ebook.create!(ebook_attrs)
  puts "Created: #{ebook_attrs[:title]} by #{ebook_attrs[:author]}"
end

puts "\nSuccessfully created #{Ebook.count} ebooks!"
