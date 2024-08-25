# frozen_string_literal: true

Rails.application.routes.draw do
  root 'interview#index'
  get 'interview/interview_introduction' => 'interview#interview_introduction'
  get 'interview/interview_work' => 'interview#interview_work'
  get 'interview/interview_personal' => 'interview#interview_personal'
  get 'interview/interview_communication' => 'interview#interview_communication'
  get 'interview/interview_career' => 'interview#interview_career'
  get 'interview/end' => 'interview#end'

  post 'submit', to: 'interview#submit'

  get 'up' => 'rails/health#show', as: :rails_health_check
end
