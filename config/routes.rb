Rails.application.routes.draw do
  devise_for :authors
  scope module: 'authors' do
    resources :posts do
      resources :elements
    end
  end
  root to: "authors/posts#index"
end
