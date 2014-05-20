# Blocky

[![Build Status](https://travis-ci.org/codelation/blocky.png?branch=master)](https://travis-ci.org/codelation/blocky)
[![Code Climate](https://codeclimate.com/github/codelation/blocky.png)](https://codeclimate.com/github/codelation/blocky)

Blocky is a mountable `Rails::Engine` for managing editable content blocks throughout your application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "blocky"
```

Install the Blocky gem with Bundler:

```bash
$ bundle install
```

Use the install generator to set up Blocky:

```bash
$ rails g blocky:install
```

## Configuration

The install generator will create `config/initializers/blocky.rb`:

```ruby
Blocky.user_class           = "User"
Blocky.s3_access_key_id     = ENV["BLOCKY_S3_KEY"]
Blocky.s3_secret_access_key = ENV["BLOCKY_S3_SECRET"]
Blocky.s3_bucket            = ENV["BLOCKY_S3_BUCKET"]
```

### Authentication

Blocky does not include authentication because there's a good chance
you've already added authentication to your Rails app.

TODO: Add info about requirements/configuration.

### Authorization

Blocky uses [CanCan](https://github.com/ryanb/cancan) for authorization.
By default, any logged in user can create, update, and delete any content block.

TODO: Add example for limiting access to admin users.

## Usage

To create a content block, simply use the `blocky` helper
and specify a content key in any ERB template:

```erb
<%= blocky(:features) %>
```

By default, using the same content key on multiple pages
will create a separate content block for each page. To
create a content block that updates across multiple pages,
include the `global` option when specifying the content block.

```erb
<%= blocky(:contact_email, global: true) %>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
