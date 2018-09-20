Rails.application.routes.draw do
  resources :users
  resources :sql_templates

  get "cms/*page", to: CmsController.action(:respond)
end
