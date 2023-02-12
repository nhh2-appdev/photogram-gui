Rails.application.routes.draw do

  # define the "/" URL route
   get("/",{ :controller => "application", :action => "homepage" })

  # define the "/users" URL route
    get("/users",{ :controller => "users", :action => "index" })

  # define the "/users/dynamic" URL route
    get("/users/:an_id",{ :controller => "users", :action => "user_details" })
  
  # define the "/photos" URL route
      get("/photos",{ :controller => "photos", :action => "index" })

  # define the "/photos/dynamic" URL route
    get("/photos/:an_id",{ :controller => "photos", :action => "photo_details" })

end
