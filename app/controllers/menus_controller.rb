class MenusController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def self.guest
    find_or_create_by(email: 'test@com') do |user|
      user.password = Rails.application.secrets.test_account_pass
    end
  end

  def index
    @menus = Menu.includes(:user).order('created_at DESC')
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    menu = Menu.find(params[:id])
    menu.update(menu_params)
    redirect_to action: :index
  end

  private

  def menu_params
    params.require(:menu).permit(:sun_making, :mon_making, :tue_making, :wed_making, :thu_making, :fri_making, :sat_making, :sokuseki_id, :sokuseki_mon_id, :sokuseki_tue_id, :sokuseki_wed_id, :sokuseki_thu_id, :sokuseki_fri_id, :sokuseki_sat_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
