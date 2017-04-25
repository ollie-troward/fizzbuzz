Rails.application.routes.draw do
  root :to => 'fizzbuzz#index'
  put '/favourite/:number', :to => 'favourite#add'
end
