Rails.application.routes.draw do
  resources(:records, param: :slug)

  root('records#index')
end
