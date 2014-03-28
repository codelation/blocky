Rails.application.routes.draw do
  root to: "static_pages#home"
  get "/contact" => "static_pages#contact", as: "contact"
  mount Blocky::Engine => "/blocky"
end
