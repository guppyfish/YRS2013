YRS2013::Application.routes.draw do
  resources :questions
  root "pages#rootpage"
end
