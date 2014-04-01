Blocky::Engine.routes.draw do
  resources :content_blocks
  root to: "content_blocks#index"
end
