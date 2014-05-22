Blocky::Engine.routes.draw do
  resources :content_blocks, path: "/"
  resources :images
  root to: "content_blocks#index"
end
