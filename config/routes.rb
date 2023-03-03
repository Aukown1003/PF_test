Rails.application.routes.draw do
  # 制限有りはdevise_for :users,skip: [:passwords], controllers: {
  devise_for :users, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_scope :user do
    post 'user/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

  scope module: :public do
    root to: 'homes#top'
    get "/about"=>"homes#about"
    resources :users, except: [:new, :create] do
      get "unsubscribe"=>"users#unsubscribe"
      patch "withdrawal"=>"users#withdrawal"
    end
    resources :recipes do
      resources :reviews, only: [:index, :create]
      resources :reports, only: [:new, :create]#暫定追加、実証時削除
    end
  end
  # 制限有りはdevise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  devise_for :admin ,controllers: {
    sessions: "admin/sessions"
  }
  namespace :admin do
    root to: 'homes#top'
    resources :user, only: [:index, :edit, :update, :destroy]
    #以下adminはすべてこの中に
  end
end

# test_user
# test@mail
# 111111