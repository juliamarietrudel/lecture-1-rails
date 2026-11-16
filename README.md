# Lecture 1: Rails basics

A small application demonstrating the request cycle: route → controller → view.

## Run locally

Use Ruby 3.4.2 (see `.ruby-version`), then run:

```sh
bundle install
bin/rails db:prepare
bin/rails server
```

Open http://localhost:3000.

## Follow a request

1. `config/routes.rb` maps `/contact` to `PagesController#contact`.
2. `app/controllers/pages_controller.rb` sets `@members` and filters it when a search is submitted.
3. `app/views/pages/contact.html.erb` displays the form and matching members.

Try searching for `Ch` to display Charles. Matching uses `start_with?`, so it is
case-sensitive and checks the beginning of each name. An empty search shows everyone.

The form uses GET, so a search appears in the URL as `/contact?employee=Ch`.
The input's `name="employee"` becomes `params[:employee]` in the controller.

In ERB views, `<% ... %>` runs Ruby and `<%= ... %>` displays its result.
Rails helpers such as `link_to` use named routes such as `contact_path`.

## Pages

- `/`: home
- `/about-us`: about
- `/contact`: member search
