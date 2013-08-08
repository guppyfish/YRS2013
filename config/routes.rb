YRS2013::Application.routes.draw do
  resources :questions
  resources :campaigns 
  root "pages#rootpage"
end
