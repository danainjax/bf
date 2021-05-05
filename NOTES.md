BUILD LIST TARGETS
[X] Project requirements met for MVP
_____________________________
Before submitting:
a. Finish inputting all the book genres into the books search list feature on the index page
A. Data Delivery
    1. Reviews index should display reviews listed under each book's image
    (Scope method, takes all the reviews, gets each book by id, then iterates over its reviews. Like how the book's show page, show's all it's reviews, but showing ALL the books that are reviewed- on the same page.)@book.reviews.each do |review|

C. FLOW/REFACTOR
 1.  Create a helper method for the way I am parsing the date in the books/show view
 2. if have already reviewed a book, take reader to edit page instead of new

D. HTML/CSS LAYOUT
    1. Style reader profile info on readers show page
    2. Add borders to login, signup, and form pages
    3. Re-style search bars to lay them out horizontally on the page instead of stacked.
 
E. README
    1. Complete and Fix Readme instructions in md format to reader friendly view
____________________________________    
STRETCH

E. VALIDATIONS AND OMNIAUTH/FACEBOOK/GOOGLE
    1. Add logos=> buttons for social logins (google/fb)


F. FEATURE REQUEST
    i. DATA//Add a link to the NY Times Book review or review on some website for the current book
    1. Stretch Goals // Feature Requests - create a new branch for friending another reader, and one to implement a timeline feature, like feature
    2. Think of an additional model possibly to add as an enhancement to this app.
______________________________



