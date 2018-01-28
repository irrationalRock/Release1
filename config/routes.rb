Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'api/phonenumbers/parse/', to: 'phone_number#test'
    get 'api/phonenumbers/parse/text/:id', to: 'phone_number#accept'
    post 'api/phonenumbers/parse/file', to: 'phone_number#file'
end
