# frozen_string_literal: true

Rails.application.routes.draw do
  root 'event_types#index'

  resources :event_types, only: %w[create index new show], shallow: true do
    resources :events, only: %w[create index new show] do
      resources :mines, only: %w[create new]
    end
  end
end
