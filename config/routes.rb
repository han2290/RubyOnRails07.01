Rails.application.routes.draw do
    
    get '/tweet'            =>'tweet#index'
    get '/tweet/:id/show'   =>'tweet#show'
    get '/tweet/new'        =>'tweet#new'
    post'/tweet/create'     =>'tweet#create'
    get '/tweet/:id/edit'   =>'tweet#edit'
    post'/tweet/:id/update' =>'tweet#update'
    
    
end
