Build List
-----------
aa. Add link/button to delete/destroy book or review or profile/reader
a. Clean up reviews view to a user friendly experience.
1. Fix Readme in md format to reader friendly view
2. Search out how to add the NY Times Book review to the reviews show page for the book searched or displayed
3. Add link_to book on the reviews/show page
4. Check why profile pic is not coming thru in sessions controller facebook method.
5. Build scope method to group reviews index by book title
5a. Build scope method to show Top 5 Reviews or 5 star reviews, or Top 5 Books based on reviews.
6. Protect data from being accessed or created unless a reader is logged in. Prevent other readers from updating or accessing a reader's profile.
7. Helper methods
8. Stretch Goals // Feature Requests - create a new branch for friending another reader, and one to implement a timeline feature, like feature




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
- [ ]   Nav bar

Sprint 6 - Instructor Review and Feedback Prior to Project Review
- [ ]   Schedule meeting with Aysan to go through App and write notes on what needs to be fixed