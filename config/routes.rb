Rails.application.routes.draw do
  root 'home#index'
   post "upload", to: "home#create", as: "upload_image"
end
