# Introduction

[rails_admin](https://github.com/sferik/rails_admin) plugin to sorting records (using [acts_as_list](https://github.com/swanandp/acts_as_list) gem)

[![Gem Version](https://badge.fury.io/rb/rails_admin_acts_as_list.png)](http://badge.fury.io/rb/rails_admin_acts_as_list)
[![Code Climate](https://codeclimate.com/github/ankion/rails_admin_acts_as_list.png)](https://codeclimate.com/github/ankion/rails_admin_acts_as_list)

## Installation

To enable rails_admin_acts_as_list, add the following to your `Gemfile`:

```ruby
gem 'rails_admin_acts_as_list'
gem 'rails_admin'
```
**Important:** `rails_admin_acts_as_list` must be defined before `rails_admin` to work correctly.


Add in your `config/initializers/rails_admin.rb` initializer the configuration:
```ruby
RailsAdmin.config do |config|
  config.model Post do
    list do
      sort_by :position           # Add Default sorting
      sort_reverse false          # sort position increasing ('asc')
    end
  end

  config.actions do
    dashboard
    index
    new
    export
    history_index
    bulk_delete
    show
    move_higher                   # Add the move_higher action
    move_lower                    # Add the move_lower action
    edit
    delete
    show_in_app
  end
end
```

## Contributing
Submitting a Pull Request:

1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Implement your feature or bug fix.
4. Add, commit, and push your changes.
5. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/


## License
**This project rocks and uses MIT-LICENSE.**

Copyright 2015 ankion

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

