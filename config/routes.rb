R20130325Numb3rs::Application.routes.draw do
  root :to => 'home#index'
  get '/word/:num' => 'home#words'
end
