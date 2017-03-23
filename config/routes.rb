Rails.application.routes.draw do
  get 'welcome/index'

  namespace :sms_login do
    namespace :sessions do
      post :lookup_cellphone_number, as: 'lookup'
      get :sign_in
      delete :sign_out_from_sms_login, as: 'sign_out'
    end
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
