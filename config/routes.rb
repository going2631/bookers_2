Rails.application.routes.draw do
  get 'bookes' => "bookes#index"
  get 'bookes/:id' => "bookes#show"
  get 'bookes/:id/edit' => "bookes#edit"
  get '/' => "homes#top"

  post "bookes/create" => "bookes#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "bookes/update" => "bookes#update"
  delete "bookes/:id/destroy" => "bookes#destroy"
end
