# Phase 1 Project

Welcome to my phase 1 project! This CLI works as a database from all things Studio Ghibli related. You can search by film or by character. You can cycle through the lists and find out all kinds of things about your favorite movie or character. 

# Gemnames

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/gemnames`. To experiment with that code, run `bin/console` for an interactive prompt.

You will need the following gems:

gem "pry"
gem "rest-client"
gem "json"
gem "require_all"
gem "rake", "~> 13.0"
gem "rubocop", "~> 1.7" 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gemnames'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install gemnames

## Usage

To start type ruby bin/run

After a welcome message you will be asked your name

You will be asked if you would like to search by film, by person, or exit to exit

If you type in film you will be shown a list of Studio Ghibli films. You can type in the name of the film you want to learn more about.

If you type in person you will be shown a list of Studio Ghibli characters. You can type in the name of the person you want to learn more about.

After the program will ask you you would like to see the list again or exit to exit. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gemnames. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/gemnames/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Gemnames project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/gemnames/blob/master/CODE_OF_CONDUCT.md).
