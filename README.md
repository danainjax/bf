# README

## This app is now hosted on Heroku, check it out at https://bookface-danainjax.herokuapp.com/

## bookface (or bf for short)

bookface is an app that allows you to view New York Times Bestsellers, see descriptions, reviews, write reviews, and link to Amazon for purchase.

## Video Walkthrough

[![bookface walkthrough](http://img.youtube.com/vi/zad8X9gKJjY/0.jpg)](https://www.youtube.com/watch?v=zad8X9gKJjY)

## Built with: Ruby version

2.6.6

## System dependencies

```
'bundle install'
```

## Database creation and initialization

```
'rails db:migrate'
```

```
'rails db:seed'
```

    **IMPORTANT** (only seed 10 calls at a time, or the Times API will throw an error. )

Key and secret credentials needed from
https://developer.nytimes.com/docs/books-product/1/overview

## Deployment instructions

To start the local server, run

```
'rails s'
```

## Author

**Dana Pughakoff** - [danainjax](https://github.com/danainjax)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Acknowledgements

Created for Flatiron School Rails Portfolio Project
