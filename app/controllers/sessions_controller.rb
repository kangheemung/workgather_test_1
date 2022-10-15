class SessionsController < ApplicationController
  def new
  end
  def create
     #p "=============="
    #p params
    #p "=============="
      
        end
    
    p "========="
    params
    p "========="
  end
  def destroy
    if log_out planner
     redirect_to root_path
    elsif  log_out user
      redirect_to root_path
    end
  end
end
