Rails.application.routes.draw do
  root'home#top'
  get 'home/select_position'=>'home#select_position'
  get 'home/select_position_E'=>'home#select_position_E'
  get 'home/select_position_K'=>'home#select_position_K'
  get 'home/about'=>'home#about'
  
  get 'planners/new'=> 'planners#new', as:"planners"
  post 'planners/create'=>'planners#create'
  get 'sessions/new'=>'sessions#new'
  post'sessions/create' => 'sessions#create'
  delete 'sessions/destroy'=>'sessions#destroy'
  get 'users/new'=>'users#new'
  post 'users/create'=>'users#create' 
  get 'users/show'=>'users#show'

  get 'posts/index'=>'posts#index'
  get 'posts/new'=>'posts#new'
  post'posts/create'=>'posts#create'
  delete 'posts/destroy'=>'posts#destroy'
  get 'posts/show'=>'posts#show'
  get 'posts/edit'=>'posts#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
