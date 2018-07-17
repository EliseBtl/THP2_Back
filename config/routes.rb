# frozen_string_literal: true

require 'bundler/setup'
require 'bootsnap/setup'

Rails.application.routes.draw do
  root 'lessons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lessons, only: %i[index show create update destroy]
end
