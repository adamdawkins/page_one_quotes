# frozen_string_literal: true

Rails.application.routes.draw do
  resources :quotes, only: :show
end
