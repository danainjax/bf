# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.get_list("hardcover-fiction")
Book.get_list("hardcover-nonfiction")
Book.get_list("young-adult")
Book.get_list("hardcover_advice")
Book.get_list("animals")
Book.get_list("celebrities")
Book.get_list("business-books")
Book.get_list("picture-books")
Book.get_list("combined-print-and-e-book-fiction")
Book.get_list("combined-print-and-e-book-nonfiction")
Book.get_list("trade-fiction-paperback")
Book.get_list("mass-market-paperback")
Book.get_list("paperback-advice")
Book.get_list("hardcover-graphic-books")
Book.get_list("manga")
Book.get_list("culture")

