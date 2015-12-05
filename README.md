# EVOi
=====================

## Setup POW
Setup Pow! as described at http://pow.cx/
IMPORTANT!! - Symlink your app to evoi.dev
    cd ~/.pow
    ln -s ~/dev/<cloned-repo> evoi

## Versions
 - Ruby 2.1.2
 - Rails 4.1.4
 - RSpec-Rails 3.0



## Authentication 
 - [Devise](https://github.com/plataformatec/devise)

## Testing, Style and coverage

 - Testing: [RSpec-rails 3.0](https://github.com/rspec/rspec-rails) 
 - Style: [Rubocop](https://github.com/bbatsov/rubocop) 
 - Coverage: [simplecov](https://github.com/colszowka/simplecov)

## Database: Referential Integrity
[foreigner](https://github.com/matthuhiggins/foreigner)

Foreigner adds two methods to migrations.

 - add_foreign_key(from_table, to_table, options)
 - remove_foreign_key(from_table, options)

Options: 
 - :dependent
  - :delete - deletes the associated records in from_table are deleted when records in to_table table are deleted
  - :nullify - the foreign key column is set to +NULL+
  - :restrict - if related records exist in from_table, the to_table record cannot be deleted (results in: ActiveRecord::InvalidForeignKey)

this is some test text
