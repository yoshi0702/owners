Rails.application.routes.draw do
 resources :buy_points
 resource :point_historys
 resources :projects do
  resource :favorites, only: [:create, :destroy]
end
 resource :supporter
 resources :areas
 resource :owner

root 'home#top'
get '/' ,to: 'home#top'
post 'status_change',to: 'point_historys#status_change'
# 支援者側のルーティング
  devise_for :supporters,controllers: {
  	sessions:      'supporters/sessions',
  	registrations: 'supporters/registrations'
  }
  get 'buy_point/finish', to: 'buy_points#finish'

  get 'projects/fav/:id' => 'projects#fav', as: "fav_projects"


# 事業者側のルーティング
  devise_for :owners,controllers: {
  	sessions:      'owners/sessions',
  	registrations: 'owners/registrations'
  }








# 管理者側のルーティング
  devise_for :admins,controllers: {
  	sessions:      'admins/sessions',
  	registrations: 'admins/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
