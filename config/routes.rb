Blocky::Engine.routes.draw do
  resources :content_blocks, path: "/"
  resources :image
  root to: "content_blocks#index"
end
