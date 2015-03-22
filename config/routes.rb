Rails.application.routes.draw do
 
  root 'pages#welcome'
  get   '/about' => 'abouts#about'

end
