# Vinyl Database

This is a demo application to help explain some concepts around Rails. Here's how to install it.

## System Requirements

- [homebrew](https://brew.sh/)
- gpg: `brew install gpg`
- [asdf-vm](https://asdf-vm.com)
- [asdf NodeJS plugin](https://github.com/asdf-vm/asdf-nodejs)
- [asdf Ruby plugin](https://github.com/asdf-vm/asdf-ruby)
- [asdf Yarn plugin](https://github.com/asdf-vm/asdf-ruby)

## Setup Dependencies

Run the following commands:

1. `asdf install`
2. `bundle`
3. `yarn install`

Optional: `sudo gem install rails` - if you perform this step, any command starting `bundle exec rails` can be replaced with `rails`

## DB setup and migration

`bundle exec rails db:setup`
`bundle exec rails db:migrate`

## Running the development server

`bundle exec rails server`

## Running the console

`bundle exec rails console`
