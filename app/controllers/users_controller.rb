class UsersController < ApplicationController
  
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })
    
    render ({ :template => "user_templates/index.html.erb" })
  end
  
  def user_details
    @an_id = params.fetch("an_id")
    @the_user = User.where({ :id => @an_id }).at(0)
    @mat

    render ({ :template => "user_templates/show.html.erb"})
  end

end
