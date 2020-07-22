Rails.application.routes.draw do
  resources(:users)
  resources(:records, param: :slug)

  root('records#index')
end
