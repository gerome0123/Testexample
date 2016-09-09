class UsersController < ApplicationController
  def index

    redirect_to(:controller => 'students', :action => 'index')
  end

  def destroy

  end

  def create

  end
end
