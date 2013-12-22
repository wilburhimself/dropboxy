# Dropboxy

The base of a Dropbox based CMS for Ruby on Rails.

It is very basic in essence and in purpose, it:

- Fetches files from Dropbox written in Textile format.
- Parses and converts them to HTML.
- Use converted HTML as your web pages content.
- Profit.

## Installation

Add this line to your application's Gemfile:

    gem 'dropboxy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dropboxy

## Usage

You must have generated a Dropbox Access Token for your App. [More details here.](https://www.dropbox.com/developers/core/start/ruby)

Having your Access Token you create the default initializer file running:

```ruby
rails g dropboxy
```

And placing your Access Token in **/config/initializers/dropboxy.rb**

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
