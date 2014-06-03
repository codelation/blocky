Blocky::Engine.routes.draw do
  resources :content_blocks, path: "/"
  resources :content_blocks, path: "/api/content_blocks"
  resources :images
  root to: "content_blocks#index"
end
