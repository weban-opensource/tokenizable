Rails.application.routes.draw do
  mount Tokenizable::Engine => "/tokenizable"
end
