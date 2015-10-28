Rails.application.routes.draw do

  resources :quotations

  patch 'quotations/:id/like' => 'quotations#like'

  root 'quotations#index'

end
