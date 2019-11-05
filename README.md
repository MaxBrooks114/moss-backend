a user should be able to...

- sign up and log in
- see a list of concerts they've seen
- see a list of concerts other users have seen
- see a list of bands they've seen
- see a list of concerts they've been to
-search
  - by artist
  - by location
  - by venue
- upload pictures? (memories)
- upload videos?
- tours?
- concerts near you
- add a concert
  - set list
- plan a concert
- location
- concert has a date
- find concert by band
- find concert by venue
- favorites
- find concert
- leave review for a concert
    - stars vs 1-10 (overall)
    - venue review
    - sound review
    - price review
    - performance review
    - set review
    - write up?

Models

## _USER_
  ### attributes
    name
    username
    email
    omniauth
    password
    age
    :home class_name :location


  ### Relationships
    has_many concerts
    has_many bands, through concerts
    has_many venues, through
    has_many reviews, through concerts


## _CONCERT_
  ### Attributes
     date
     name?
     tour name
     opener?
  ### Relationships   
    belongs_to venue
    has_many bands
    has_many users
    has_many reviews

## _VENUE_
  ### Attributes
    location
    description
    size
    seat or stand?

  ### Relationships
      has_many bands, through concerts
      has_many concerts
      has_many users
      has_many reviews

## _REVIEW_
  ### attributes
    overall score
    venue score
    sound score
    performance score
    set score
    price
    write up

  ### Relationships
    belongs_to user
    belongs_to concert
    belongs_to venue
    belongs_to band


## _BAND_
  ### Attributes
    name
    genre
    touring
    tour dates

  ### Relationships
    has_many users, through concerts
    has_many venues, through concerts
    has_many reviews, through concerts
    has_many concerts
