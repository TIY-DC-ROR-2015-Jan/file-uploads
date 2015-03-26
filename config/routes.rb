Rails.application.routes.draw do
  devise_for :users

  get '/upload_csv'  => 'uploads#csv'
  post '/upload_csv' => 'uploads#handle_csv'
end
