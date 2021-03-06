# Specifications for the Rails Assessment

//test

Specs:

- [x] Using Ruby on Rails for the project

- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)

  Book has_many :reviews
  Reader has_many :reviews

- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)

  Review belongs_to :book
  Review belongs_to :reader

- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)

  Reader has_many :books, through: :reviews
  Book has_many :readers, through: :reviews

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)

  Reader has_many :books, through: :reviews
  Book has_many :readers, through: :reviews

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)

  Review.book_review (User submits their own review, meeting the user submittable attribute)
  Review.star_rating (select 1-5, either collection select or check boxes)
  Review_status (select from “want to read”, “currently reading”, “read”, either collection select or check boxes)

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
      Reviews- minimum and max length, star rating and status required
      Reader - username, email (uniqueness and presence), password length
      Book - title uniqueness, author presence

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
      Scoped book index by genre Book.genre  
      Scoped reviews index by book_id Review.by_the_book
      Scoped Books by Five Star reviews and made a view under Books called five_star /five_star
- [x] Add route to scope method

- [x] Include signup (how e.g. Devise) /signup
- [x] Include login (how e.g. Devise)/login
- [x] Include logout (how e.g. Devise) destroy method in sessions controller
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
      Login with Google is implemented, & Login with Facebook is implemented
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
      reviews are nested under books, books/1/reviews (index route)
      reviews are nested under readers, readers/1/reviews (index route)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
      books/2/reviews/new
      reviews are nested under books, books/12/reviews/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
      error messages are in the views (example: the partial \_reader.html handles error messages for new and edit pages for readers)

Confirm:

- [x] The application is pretty DRY
      abstracted find_by into private methods in each controller, and used partials
- [x] Limited logic in controllers
      abstracted find_by into private methods in each controller, made helper methods for logged_in?, current_reader, and authorized in application controller
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
      Partials for \_reader, \_book, and \_review forms, partial for layout \_header, made \_errors partial to render errors in the appropriate views.
