if Rails::VERSION::MAJOR >= 3
  Rails.application.routes.draw do
    resources :translation_keys
  end
else
  ActionController::Routing::Routes.draw do |map|
    map.resources :translation_keys
  end
end
