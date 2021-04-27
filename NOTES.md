Build List
-----------
A. VALIDATIONS AND OMNIAUTH/FACEBOOK/GOOGLE
1. facebook login (profile_pic attribute not coming thru, commented out) - able to login with google if email address is not danainjax@ gmail.com (not existing email address)

2. Check why profile pic is not coming thru in sessions controller facebook method.
__________________________
B. HTML/CSS LAYOUT
1. How to display reviews horizontally on the books show page, this is also something I need to find out how to do on the library or books index page, and profile page (readers show)
2. style reader profile info on readers show page
_____________________________
C. CRUD ACTIONS
1. Add link/button to delete/destroy book or review or profile/reader
_____________________________
README
1. Fix Readme in md format to reader friendly view
ADD API CALL AND SEED DATABASE
1. Search out how to add the NY Times Book review to the reviews show page for the book searched or displayed
SCOPE/ROUTE
1. Build scope method to group reviews index by five_star reviews 
HELPER METHODS
1. Protect data from being accessed or created unless a reader is logged in. Prevent other readers from updating or accessing a reader's profile. Helper methods
FEATURE REQUEST
1. Stretch Goals // Feature Requests - create a new branch for friending another reader, and one to implement a timeline feature, like feature




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
    added alphabetize to books index, books/alpha   books.alpha

Sprint 4 - Refactoring/DRY
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

Sprint 5 - How Does it Look?/Facelift
- [X]   Bootstrap- added basic bootstrap
- [ ]   Styling
- [ ]   Wireframing
- [ ]   bf logo
- [X]   Nav bar

Sprint 6 - Instructor Review and Feedback Prior to Project Review
- [ ]   Schedule meeting with Aysan to go through App and write notes on what needs to be fixed