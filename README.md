# Warden::AlwaysAuthenticate
[![Build Status](https://secure.travis-ci.org/JonRowe/warden-always-authenticate.png)](http://travis-ci.org/JonRowe/warden-always-authenticate) [![Code Climate](https://codeclimate.com/github/JonRowe/warden-always-authenticate.png)](https://codeclimate.com/github/JonRowe/warden-always-authenticate)

Simple gem / Rack middleware for forcing Warden to authenticate calls.

## Installation

Add this line to your application's Gemfile:

    gem 'warden-always-authenticate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install warden-always-authenticate

## Usage

In your preferred Rack configuration location:

    use Warden::AlwaysAuthenticate

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
