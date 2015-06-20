Rails.application.routes.draw do

  root to: "welcome#home"
  resources :posts 
  
end
