# frozen_string_literal: true

require_relative "lib/sinatra_swagger_ui_serve/version"

Gem::Specification.new do |spec|
    spec.name          = "sinatra_swagger_ui_serve"
    spec.version       = SinatraSwaggerUiServe::VERSION
    spec.authors       = ["Surendra Rai"]
    spec.email         = ["faren.rai26@gmail.com"]
  
    spec.summary       = %q{Sinatra app to run swagger ui Serve}
    spec.description   = %q{Sinatra app to run swagger ui serve}
    spec.homepage      = "https://github.com/surendra83/sinatra_swagger_ui_serve"
    spec.license       = "MIT"
  
    spec.required_ruby_version = ">= 2.5"
  
    spec.files         = Dir["lib/**/*.rb"] + ["README.md"]
    spec.require_paths = ["lib"]
  
    spec.add_runtime_dependency "sinatra", ">= 2.0"
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
    spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"
  end
  