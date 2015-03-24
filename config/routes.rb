Rails.application.routes.draw do
 
  root 'pages#welcome'
  get  '/about' => 'abouts#about'
  get  '/contact' => 'signups#new'
  post  '/contact/new' => 'signups#create'
  get   '/thanks' => 'pages#thanks'


end
