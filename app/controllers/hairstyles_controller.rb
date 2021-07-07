class HairstylesController < ApplicationController
  before_action :authenticate_user! ,except: [:index,:show]
  before_action :hairstyle_find ,only: [:show, :edit, :update, :destroy]
  before_action :user_check ,only: [:edit, :update, :destroy]

  def index
    @hairstyles = Hairstyle.all.includes(:user)
  end

  def show
  end

  def new
    @hairstyle = Hairstyle.new
  end

  def create
    @hairstyle = Hairstyle.create(hairstyle_params)
    if @hairstyle.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @hairstyle.update(hairstyle_params)
      redirect_to hairstyle_path(@hairstyle.id)
    else
      render :edit
    end
  end

  def destroy
    @hairstyle.destroy
    redirect_to root_path
  end


  private

  def hairstyle_find
    @hairstyle = Hairstyle.find(params[:id])
  end

  def hairstyle_params
    params.require(:hairstyle).permit(:hairstylename, :gender_id, :hairlength_id, :haircolor_id, :detail, :image).merge(user_id: current_user.id)
  end

  def user_check
    unless @hairstyle.user_id == current_user.id
      redirect_to action: :index
    end
  end

end