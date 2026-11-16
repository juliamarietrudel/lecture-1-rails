Rails.application.routes.draw do
  # Routes map URLs to controller actions (controller#action).
  root to: "pages#homepage"
  get "/contact", to: "pages#contact"
  get "/about-us", to: "pages#about"
end
