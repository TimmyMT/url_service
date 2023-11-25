# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  resources :urls do
    collection do
      get 'short_url', to: 'urls#short_url'
      get 'short_url/stats', to: 'urls#stats'
    end
  end
end
