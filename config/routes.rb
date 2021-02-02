Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index', as: :home

  # Session (CookieStore) vs Cookies
  get 'session-vs-cookies', to: 'session_vs_cookies#index', as: :session_vs_cookies
  post 'session-vs-cookies/save', to: 'session_vs_cookies#save', as: :session_vs_cookies_save

  # Types of Cookies
  get 'types-of-cookies', to: 'types_of_cookies#index', as: :types_of_cookies
  post 'types-of-cookies/save', to: 'types_of_cookies#save', as: :types_of_cookies_save
end
