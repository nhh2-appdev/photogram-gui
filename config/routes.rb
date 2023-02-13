Rails.application.routes.draw do

  # define the "/" URL route
   get("/",{ :controller => "users", :action => "index" })

  # define the "/users" URL route
    get("/users",{ :controller => "users", :action => "index" })

  # define the "/users/dynamic" URL route
    get("/users/:an_id",{ :controller => "users", :action => "user_details" })
  
  # define the "/photos" URL route
      get("/photos",{ :controller => "photos", :action => "index" })

  # define the "/photos/dynamic" URL route
    get("/photos/:an_id",{ :controller => "photos", :action => "photo_details" })

  # define the "delete_photo" URL route
    get("/delete_photo/:an_id",{ :controller => "photos", :action => "delete" })

  # define the "update_photo" URL route
    get("/update_photo/:an_id",{ :controller => "photos", :action => "update" })

  # define the "insert_photo_record" URL route
      get("/insert_photo_record",{ :controller => "photos", :action => "insert_photo_record" })

end
