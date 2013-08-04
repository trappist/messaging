# Messaging

This gem provides a framework for Facebook-style (no subject, no threads, just messages among users) messaging with support for attachments. Models and other such logic are provided, but controllers, views etc. are up to the developer.

Requirements
------------

* Rails 4.x
* A User model (or equivalent: the exact class name is configurable and defaults to `User`)
* The User model must `respond_to` `:name` and `:email`

Installation
------------

Add to your Gemfile:

```ruby
gem 'messaging'
```

Then run:

```sh
$ bundle install
```

Invoke the install generator:

```sh
$ rails g messaging:install
```

And don't forget to migrate your database:

```sh
$ rake db:migrate
```

Find your configuration options in `config/initializers/messaging.rb`
