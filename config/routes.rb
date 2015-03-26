Rails.application.routes.draw do
  devise_for :users

  get '/upload_csv'     => 'uploads#csv'
  post '/upload_csv'    => 'uploads#handle_csv'
  post '/upload_kitten' => 'uploads#handle_kitten'
end
