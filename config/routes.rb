Rottenpotatoes::Application.routes.draw do
  resources :movies
  #match '/movies/find', :controller => 'movies', :action => 'find'
  match 'movies/find/:id', :to => 'movies#find', :as => 'find_movie'
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
