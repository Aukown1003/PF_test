Rails.application.routes.draw do
  # 制限有りはdevise_for :users,skip: [:passwords], controllers: {
  devise_for :users, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  scope module: :public do
    root to: 'homes#top'
    get "/about"=>"homes#about"
    
  end
  # 制限有りはdevise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  devise_for :admin ,controllers: {
    sessions: "admin/sessions"
  }
  namespace :admin do
    root to: 'homes#top'
    #以下adminはすべてこの中に
  end
end

# test_user
# test@mail
# 111111