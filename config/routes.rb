Rails.application.routes.draw do
  get 'trello/sticky'
  post 'trello/index'
  
  root 'trello#sticky'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
