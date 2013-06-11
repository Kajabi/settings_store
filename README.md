# SettingsStore

A very simple hash like store for App settings.

The main reason for this is to behave differently than an hash
and raise NoMethodError for unset values, as opposed to just
grabbing a nil.

## Installation

Add this line to your application's Gemfile:

    gem 'settings_store'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install settings_store

## Usage

In your application.rb file add a line like:

```ruby
AppConfig = SettingsStore::SettingsHash.new

# config/initializers/foo_setup.rb
AppConfig.foobar = :fizzbuzz
```

If you wish to use namespacing, make a toplevel OrderedOptions instance that
builds default values from SettingsStore::SettingsHash

```ruby
AppConfig =  ActiveSupport::OrderedOptions.new { |h, k| h[k] = SettingsStore::SettingsHash.new }

# config/initializers/mailgrid_setup.rb
AppConfig.mailgrid.key = "123456789abc"
AppConfig.mailgrid.secret = "secret123"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
