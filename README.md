# Arti

A Ruby interface for interacting with JFrog's Artifactory artifact repository.

*__Note:__ Not much to see here yet. Just tinkering with new tech.  It's gonna get better though!  Onward & Upward.*

## Installation

Add this line to your application's Gemfile:

    gem 'arti'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arti

## Usage

```
#! /usr/bin/env ruby
require 'arti'

conn = Arti::Connection.new(
  :endpoint => 'https://my.artifactoryonline.com',
  :user => 'me',
  :password => 'mypassword'
)

artifact = conn.get('/path/to/my/artifact')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
