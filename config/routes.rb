router = if Rails::VERSION::MAJOR == '3'
  Rails.application.routes
else
  ActionController::Routing::Routes
end

router.draw do |map|
  map.resources :translation_keys
end
