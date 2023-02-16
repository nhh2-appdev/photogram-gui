Rails.application.routes.draw do

  # define the "/" URL route
   get("/",{ :controller => "users", :action => "index" })

  # define the "/users" URL route
    get("/users",{ :controller => "users", :action => "index" })
  
  # define the "/users/dynamic_username" URL route
   #get("/users/anisa",{ :controller => "users", :action => "user_details_final" }) 
  
  # define the "/users/dynamic" URL route
    get("/users/:a_username",{ :controller => "users", :action => "user_details" })

  # define the "/insert_new_user" URL route
    get("/insert_new_user",{ :controller => "users", :action => "new_user" })
  
  # define the "/photos" URL route
      get("/photos",{ :controller => "photos", :action => "index" })

  # define the "/photos/dynamic" URL route
    get("/photos/:an_id",{ :controller => "photos", :action => "photo_details" })

  # define the "delete_photo" URL route
    get("/delete_photo/:an_id",{ :controller => "photos", :action => "delete" })

  # define the "update_photo" URL route
    get("/update_photo/:an_id",{ :controller => "photos", :action => "update" })
  
  # define the "comment" URL route
    get("/insert_photo_record/:an_id",{ :controller => "photos", :action => "comment" })

  # define the "insert_photo_record" URL route
      get("/insert_photo_record",{ :controller => "photos", :action => "insert_photo_record" })

end
