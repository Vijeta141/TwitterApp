Rails.application.routes.draw do
  get 'twitter',to: 'twitter#user_tweet'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
