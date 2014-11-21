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
rake db:create
```

The template uses [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord)
and [sinatra-activerecord](https://github.com/janko-m/sinatra-activerecord) to interact with
the database.

Any changes you want to make, you can execute via a [Rake](https://github.com/jimweirich/rake)
task, a list of tasks can be found on the
[sinatra-activerecord](https://github.com/janko-m/sinatra-activerecord) GitHub page.

## Usage

Once you've completed the setup phase you're free to develop how you want!