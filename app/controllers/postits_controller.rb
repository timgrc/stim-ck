class PostitsController < ApplicationController
  before_action :set_postit, only: [:update, :destroy]

  def index
    @postits = Postit.all
  end

  def new
    @postit = Postit.new
  end

  def create
    @postit = Postit.new(postit_params)
    @postit.save
    redirect_to root_path
  end

  def update
    position_top = params[:postit][:position_top]
    position_left = params[:postit][:position_left]

    @postit.position_top = position_top
    @postit.position_left = position_left

    @postit.save
  end

  def destroy
    @postit.destroy
  end

  private

  def set_postit
    @postit = Postit.find(params[:id])
  end

  def postit_params
    params.require(:postit).permit(:text)
  end
end
