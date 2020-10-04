# RandomAnimeChooser

Welcome to random_anime_chooser gem! To begin this gem, run ./bin/anime_chooser and follow the directions given to you in your terminal. This gem scrapes the titles and descriptions of 32 popular and well-known animes from the popular site Buzzfeed. It then creates 32 instances of the MyCollection class with the attributes of name and description. The Director class tells the user to provide a number 1-32 and then outputs an anime from the list. It then asks the user if they would like to see a description of the chosen anime. Lastly, the user is thanked and the program can be used again with the ./bin/anime_chooser command. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'random_anime_chooser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install random_anime_chooser

## Usage

To begin this gem, run ./bin/anime_chooser. The screen will ask for a number 1-32, so you input any number meeting the criteria and click enter. You will be given a random anime from the list and the screen will ask if you wish to see the description. Here the number 1 will be yes and the number 2 will be no. Lastly, the screen will thank you for using the gem. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'enthusiastic-anchor-7461'/random_anime_chooser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RandomAnimeChooser project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'enthusiastic-anchor-7461'/random_anime_chooser/blob/master/CODE_OF_CONDUCT.md).

