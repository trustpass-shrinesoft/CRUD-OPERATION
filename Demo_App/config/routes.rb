Rails.application.routes.draw do
  
  get 'data/getdata'=>'data#getdata'
  get 'data/savedata'
  get 'data/showdata'
  get 'data/deletedata'
  get 'data/editdata'
  get 'data/updatedata'
  get "data/filterdata"


  get 'con/hello'
  get 'goodbye' => "con#goodbyee"
  get 'courses' => "courses#index"

  get 'render/hello'
  get 'render/goodbye'
  get 'render/hello1'
  get 'a'=>'render#goodbye'
  get 'render/redirect'=>'render#redirect_fun'
  get 'youtube'=>'render#youtube'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
