# README

## bookface (or bf for short)
bookface is an app that allows you to view New York Times Bestsellers, see descriptions, reviews, write reviews, and link to Amazon for purchase.

## Video Walkthrough

<a href="https://www.youtube.com/user/DanawithaD/featured" target="_blank"><img src="http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg" alt="bookface walkthrough" width="240" height="180" border="10" /></a>

[![bookface walkthrough](http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](http://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE)

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
    Key and secret credentials needed from [https://developer.nytimes.com/docs/books-product/1/overview]


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


