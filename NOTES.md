BUILD LIST TARGETS
*Refactoring/DRY*
- [ ] The application is pretty DRY
- [X] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [X] Views use partials if appropriate
_____________________________
M_V_P

A. Refactor Books class for API calls to dry up the code
 
B. HTML/CSS LAYOUT
    1. Fix form pages
    2 How to display reviews horizontally on the books show page, this is also something I need to find out how to do on the library or books index page, and profile page (readers show)
    3 style reader profile info on readers show page
    4. Style Login/Signup/and all forms pages

C. README
    1. Complete and Fix Readme instructions in md format to reader friendly view
____________________________________    
STRETCH

D. VALIDATIONS AND OMNIAUTH/FACEBOOK/GOOGLE
    1. Add logos=> buttons for social logins (google/fb)


E. FEATURE REQUEST
    i. DATA//Add a link to the NY Times Book review or review on some website for the current book
    1. Stretch Goals // Feature Requests - create a new branch for friending another reader, and one to implement a timeline feature, like feature
    2. Think of an additional model possibly to add as an enhancement to this app.
______________________________

- [X]Sprint 1 - Validations and Errors
- [X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    Reviews- minimum and max length, star rating and status required 
	Reader - username, email (uniqueness and presence), password length
	Book - title uniqueness, author presence

- [X] Include form display of validation errors (form URL e.g. /recipes/new) error messages are in the views (example: the partial _reader.html handles error messages for new and edit pages for readers, same for reviews _review handles error messages for reviews)

- [X]Sprint 2 -Sign in Out and Up
- [X] Include signup (how e.g. Devise)
- [X] Include login (how e.g. Devise)
- [X] Include logout (how e.g. Devise)
- [X] Include third party signup/login (how e.g. Devise/OmniAuth) (Google) & (Facebook)

- [X]Sprint 3 - Routes
- [X] Include nested resource show or index (URL e.g. users/2/recipes)
    nested reviews under books and under readers, ex: readers/1/reviews , books/1/reviews (index route)
- [X] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    books/10/reviews/new
- [X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    Scoped book index by genre Book.genre  
	Scoped reviews index by book_id Review.by_the_book
	Scoped Books by Five Star reviews and made a view under Books called five_star   /five_star

Sprint 4 - Refactoring/DRY
- [ ] The application is pretty DRY
- [X] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [X] Views use partials if appropriate

Sprint 5 - How Does it Look?/Facelift
- [X]   Bootstrap- added basic bootstrap
- [ ]   Styling
- [ ]   Wireframing
- [ ]   bf logo
- [X]   Nav bar

Sprint 6 - Instructor Review and Feedback Prior to Project Review
- [ ]   Schedule meeting/ attend office hours with Aysan to go through App and write notes on what needs to be fixed