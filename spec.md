# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project

- [X] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
    
    Book has_many :reviews
	Reader has_many :reviews

- [X] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    
    Review belongs_to :book
	Review belongs_to :reader

- [X] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    
    Reader has_many :books, through: :reviews
 	Book has_many :readers, through: :reviews

- [X] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    
    Reader has_many :books, through: :reviews
 	Book has_many :readers, through: :reviews

- [X] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    
    Review.book_review	(User submits their own review, meeting the user submittable attribute)
	Review.star_rating (select 1-5, either collection select or check boxes)
	Review_status (select from “want to read”, “currently reading”, “read”, either collection select or check boxes)

- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [X] Include signup (how e.g. Devise) /signup
- [X] Include login (how e.g. Devise)/login
- [X] Include logout (how e.g. Devise) destroy method in sessions controller
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [X] Include nested resource show or index (URL e.g. users/2/recipes)
	reviews are nested under books,  books/1/reviews  (index route)
	reviews are nested under readers, readers/1/reviews (index route)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
