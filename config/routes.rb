# frozen_string_literal: true

Rails.application.routes.draw do
  root 'interview#index'
  get 'interview/interview' => 'interview#interview'

  get 'up' => 'rails/health#show', as: :rails_health_check
end
