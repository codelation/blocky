# Blocky

[![Code Climate](https://codeclimate.com/github/codelation/blocky.png)](https://codeclimate.com/github/codelation/blocky)

Blocky is a mountable `Rails::Engine` for managing editable content blocks throughout your application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "blocky"
```

Install the Blocky gem with Bundler:

```bash
bundle install
```

Use the install generator to set up Blocky:

```bash
rails g blocky:install
```

Run the installed database migrations to add the required tables:

```bash
rake db:migrate
```

## Usage

To create a content block, simply use the `blocky` helper and specify a content key in
your ERB template. Each content key must be unique across your entire application for
each content block that has unique content.

```erb
<%= blocky(:contact_info) %>
```

You can specify a block of HTML to be loaded into the content block the first time
the that content key is loaded. This means you won't have a bunch of empty content
blocks in development when a new developer spins up the app for the first time.

```erb
<%= blocky(:product_faq) do %>
  <h1>Frequently Asked Questions</h1>
  <ul>
    <li>How do I add content blocks?</li>
    <li>How do I edit my content blocks?</li>
  </ul>
<% end %>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
