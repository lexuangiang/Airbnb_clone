Rails.application.routes.draw do
  devise_for :users,
    path:'',
    path_name: {sign_in: "login", sign_out: "logout", edit: "profile", sigh_up: "registration"},
    controllers: {omniauth_callbacks: "omniauth_callbacks"}

  root "pages#home"
end
