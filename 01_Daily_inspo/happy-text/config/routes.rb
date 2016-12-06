Rails.application.routes.draw do

post 'reply' => 'notifications#reply'

  # resource :notifications do
  # #   collection do
  #     post 'reply'
  # #   end
  # end
end
