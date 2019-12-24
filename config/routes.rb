Rails.application.routes.draw do
	resources :books
  devise_for :users
  resources :users, only:[:show, :index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  get 'home/about' => 'home#about'

end

