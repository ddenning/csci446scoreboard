Scoreboard::Application.routes.draw do

  resources :scores, :only => [:index, :create]
end
