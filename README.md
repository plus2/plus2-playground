# PLUS2 Playground

A Rails 3 engine encapsulating our app playground approach to design.

In a new project, we set up an independent `playground` branch. Our designers can play around with and iterate designs within the app framework (i.e. using haml, sass, compass rails helpers etc.) without conflicting with the business code (database backed models etc.).

When its ready, the developers cherry pick or just copy haml and other design elements from the `playground` branch.

## Installation

    gem install plus2-playground
    # or Gemfile
    gem 'plus2-playground'

In `RAILS_ROOT/config/routes.rb`:

    YourNewApp::Application.routes.draw do
      add_playground_routes
    end

Start your app.
    
## Usage

Put your playground mockups into `RAILS_ROOT/app/views/playground`

The directory you put your templates in (under `views/playground`) chooses the layout as follows:

    playground/list_of_hammers.haml             - application layout
    playground/application/list_of_hammers.haml - application layout
    playground/admin/list_of_nails.haml         - admin layout

Now, navigate to your app in a browser.

