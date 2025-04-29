require 'sinatra/base'
require "yaml"
require "json"
module SinatraSwaggerUiServe
  class Server < Sinatra::Base
    def self.registered(options = {})
      spec_url = options[:spec_url] || '/swagger.yaml'

       get '/api-docs' do
            html=<<~HTML
            <!DOCTYPE html>
            <html>
            <head>
              <title>Swagger</title>
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/swagger-ui/5.21.0/swagger-ui.min.css" integrity="sha512-wWpxfn2bFvPwxuqDyiJbVB0WR3ffSqJNMMryNP07frPJ1h5Xg9HIDMV1wRr1rpxT5E+KTxDrKTuWfGb1RcV8SA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            </head>
            <body>
              <div id="swagger-ui"></div>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/swagger-ui/5.21.0/swagger-ui-bundle.min.js" integrity="sha512-U4Jr5QoQ92IWjtk2O8PwODhOXws1qUsT+nfedj+hZQK/wrh/pufkMyaiWXAQ6x/l+fM2SHwkzmQI/JaXbZMAQA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/swagger-ui/5.21.0/swagger-ui-standalone-preset.min.js" integrity="sha512-yJlD9FXQ7YaxAKXhviHSt/0KqWDCkLFdCnk0Ti23HXDMEQtHLAAWMHZ+POglC1mx/MOUB//h8kci3U1JYrywpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
              <script>
              window.onload = () => {
                  window.ui = SwaggerUIBundle({
                              url: '#{spec_url}',
                              dom_id: '#swagger-ui',
                              presets: [
                                SwaggerUIBundle.presets.apis,
                                SwaggerUIStandalonePreset
                              ],
                              layout: "BaseLayout"
                      });
              };
              </script>
            </body>
            </html>
          HTML
          content_type :html
          html
       end
    end
  end
end
