#body_id
======

![body_id logo](https://raw.github.com/the4dpatrick/body-id-gem/master/images/body_id.png "body_id logo")

Create a custom `body_id` from your controller and action names.
```
Pages#index #=> #page-index
Cars#new #=> #car-new
```
Installation
------------

Add this line to your application's Gemfile:

    gem 'body_id'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install body_id

Usage
-----

In your `application.html.erb`, or other layout files, set `body_id` as the body tag's ID
###ERB
```html
...
</head>
    <body id= <%= body_id %>>
        <%= yield %>
    </body>
</html>
```

###HAML
```haml
...
%body{ id: "#{ body_id }" }
...
```

Custom `body_id`
---------------
In case you want a custom ID for your body tag, simply create an instance variable with what you want the view's body_id to be.

```ruby
class PagesContrller < ApplicationController
  def index
    @body_id = 'home'
  end

  def new
    @body_id = 'awesome-custom-id'
  end
end
```

Contributing
------------

1. Fork it ( http://github.com/the4dpatrick/body-id-gem )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
