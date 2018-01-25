Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'phonenumber/', to: 'phone_number#test'
    get 'phonenumber/:id', to: 'phone_number#accept'
    post 'phonenumber/file', to: 'phone_number#file'
end
