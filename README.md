# Sinatra Swagger Ui Server

Sinatra app to run swagger ui

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sinatra_swagger_ui_serve'
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/surendra83/sinatra_swagger_ui_serve


## how to use Sinatra this geam


```Ruby

require 'sinatra'
require_relative 'sinatra_swagger_ui_serve'

# Tell the gem whether you want YAML or JSON
SinatraSwaggerUiServe::Server.registered(self, spec_url: '/swagger.yaml')

# call server
use SinatraSwaggerUiServe::Server

# If you want to serve JSON instead:
# SinatraSwaggerUiServe::Server.registered(self, spec_url: '/swagger.json')

get '/swagger.yaml' do
  content_type 'application/x-yaml'
  File.read('swagger.yaml')
end

get '/swagger.json' do
  content_type 'application/json'
  File.read('swagger.json')
end

get '/hello' do
  "Hello, world!"
end

```

### Provide a swagger.yaml file (instead of JSON)
Create a file named swagger.yaml in your project folder, for example:

```yamal

openapi: 3.0.0
info:
  title: Sample API
  version: 1.0.0
paths:
  /hello:
    get:
      summary: Say hello
      responses:
        '200':
          description: OK

```

### Write this code in execution Update your app.rb. 

```Ruby

get '/swagger.yaml' do
  content_type 'application/x-yaml'
  File.read('swagger.yaml')
end

```


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
