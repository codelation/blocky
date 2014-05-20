Blocky::Engine.routes.draw do
  resources :content_blocks, path: "/"
  root to: "content_blocks#index"
end
