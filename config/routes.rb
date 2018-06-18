Rails.application.routes.draw do
    
    #read
    get '/tweet'            =>'tweet#index'
    get '/tweet/:id/show'   =>'tweet#show'
    
    #create
    get '/tweet/new'        =>'tweet#new'
    post'/tweet/create'     =>'tweet#create'
    
    #update
    get '/tweet/:id/edit'   =>'tweet#edit'
    post'/tweet/:id/update' =>'tweet#update'
    
    #delete
    get '/tweet/:id/delete' =>'tweet#delete'
    
    
end
