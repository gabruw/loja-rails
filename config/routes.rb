Rails.application.routes.draw do
  root to: "produtos#index"
  get "produtos/busca", to:"produtos#busca", as: :busca_produto
  resources :produtos, only: [:new, :create, :destroy]
end
