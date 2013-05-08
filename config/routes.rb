Notes::Application.routes.draw do

  devise_for :users

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  authenticated :user do
    resources :notes
    root :to => 'application#index'
  end
  root :to => 'application#landing'

end
