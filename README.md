# Eventz - a sample Ruby on Rails app

This is a toy Ruby on Rails application created as part of the Level Up Tutorials beginner Ruby on Rails course. I will add a link to that course once it's available.

You can find the app at https://eventzzzz.herokuapp.com/.

## Contributing

Contributions are encouraged by folks taking the Level Up Tutorials course. Practice is often the best way to learn.
If you are looking for contribution suggestions, please take a look at the [issues tab](https://github.com/luanzeba/eventz/issues).

## Development

Fork this repository and clone it locally. Follow [this guide](https://docs.github.com/en/get-started/quickstart/fork-a-repo) if you need help.

You will need to setup postgresql and redis. You can use homebrew for installing on a mac:
```
brew install postgresql
brew install redis

brew services start postgresql
brew services start redis
```

Run the following commands to setup your environment:
* `bin/rails db:create` for creating the database locally
* `bin/rails db:migrate` for running all migrations

The following commands are used for development:
* `bin/dev` will start your Rails server and all associated processes using the Procfile
* `bin/rails c` will start your Rails console

## Testing

The test suite is written using [Minitest](https://github.com/minitest/minitest).

```
# Run the entire test suite
bin/rails test

# Run all model tests
bin/rails test test/models

# Run a specific test file
bin/rails test test/models/event_test.rb

# Run the example at a specific line number in the given test file
bin/rails test test/models/event_test.rb:4
```

## Technology stack

* Ruby 3.0.1.
* Rails 7.0.

I have not added any additional gems. The goal is to keep it as vanilla Rails as possible.

See the Gemfile for all dependencies and their respective versions.

