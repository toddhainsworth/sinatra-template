# Sinatra Template

Simple, general application template for the Sinatra Ruby Web Framework.

Much of this template has come from various tutorials.

## Setup

Change the database settings in `config/environments.rb` to match
that of your own.

By default, the template uses PostgreSQL but you can use any database
you like by changing the Gemfile and updating any references in
`config/environments.rb`.

You'll then need to run the following to create the database.
```shell
$ rake db:create
```

The template uses [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord)
and [sinatra-activerecord](https://github.com/janko-m/sinatra-activerecord) to interact with
the database.

Any changes you want to make, you can execute via a [Rake](https://github.com/jimweirich/rake)
task, a list of tasks can be found on the
[sinatra-activerecord](https://github.com/janko-m/sinatra-activerecord) GitHub page.

## Usage

The way I have set it up, it's not a full MVC setup, but rather a "Model, View, Routes"
configuration with some helpers sprinkled around the side, the way you define each type
is easy.

### Models

Create a migration:

```shell
$ rake db:create_migration posts
```

The migration is an ActiveRecord migration, so if you are familiar with that pattern
you should be fine to fill the migration out. If not, read the [Rails Guide](http://guides.rubyonrails.org/migrations.html)
on the topic.

Create a corresponding model:

```shell
$ touch models/post.rb
```

```ruby
class Post < ActiveRecord::Base
end
```

An that's it! The template takes care of requiring the models, so you can just start
writing a great web app!

## Views

Views are the same as they are in vanilla Sinatra, go about it as you usually would!

## Routes

Routes are also the same as vanilla Sinatra, they are defined in `app.rb`

NOTE: in Sinatra, the routes are basically the same as controller actions, so treat them as such.

## Helpers

Helpers are defined in seperate organisational files in `helpers`.

In `app.rb` you need to include them manually inside the helpers block:

```ruby
helpers do
  include MyHelper
end
```

This will probably change as the template matures.