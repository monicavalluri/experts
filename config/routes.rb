Rails.application.routes.draw do
  get "expert/search_expert"
  get "expert/:id" => "expert#show"
  root "expert#index"
end
