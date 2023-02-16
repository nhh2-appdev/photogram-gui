class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })

    render({ :template => "user_templates/index.html.erb" })
  end

  def user_details
    @an_id = params.fetch("a_username")
    @the_user = User.where({ :username => @an_id }).at(0)
    render({ :template => "user_templates/show.html.erb" })
    #@the_username = @the_user
    #redirect_to("/users/" + @the_user.username)
    
    #def user_details_final
      #@an_id = params.fetch("a_username")
      #@the_user = User.where({ :username => "anisa" }).at(0) 
    #end
  end

  def new_user
    a_new_user = User.new
    input_username = params.fetch("input_username")
    a_new_user.username = input_username
    a_new_user.save
    #matching_user = User.where({ :username => a_new_user })
    #the_user = matching_user.at(0)

    redirect_to("/users/" + a_new_user.id.to_s)
  end
end

    #@the_name = @matching_user
    #@the_user = @matching_user
    #@the_username = @the_user.username
    #render ({ :template => "user_templates/show.html.erb" })
