AzureApi::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :programming_languages
    end
  end
end