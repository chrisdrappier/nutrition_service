# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'abbrevs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Test Comment
  scope format: false do
    resources :abbrevs, only: %i[index show]
    # resources :data_src, only: [:index, :show]
    # resources :datasrcln, only: [:index, :show]
    # resources :deriv_cd, only: [:index, :show]
    # resources :fd_group, only: [:index, :show]
    # resources :food_des, only: [:index, :show]
    # resources :footnote, only: [:index, :show]
    # resources :langdesc, only: [:index, :show]
    # resources :langual, only: [:index, :show]
    # resources :nut_data, only: [:index, :show]
    # resources :nutr_def, only: [:index, :show]
    # resources :src_cd, only: [:index, :show]
    # resources :weight, only: [:index, :show]
  end
end
