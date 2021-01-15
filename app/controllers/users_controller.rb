class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @menus = user.menus
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to root_path
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    if current_user.update(menu_params)
      redirect_to root_path
    else
      render :edit
    end
  end
end
