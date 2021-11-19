class FollowersController < ApplicationController
  before_action :set_follower, only: %i[show edit update destroy]

  # GET /followers
  def index
    @q = Follower.ransack(params[:q])
    @followers = @q.result(distinct: true).includes(:follower,
                                                    :receiver).page(params[:page]).per(10)
  end

  # GET /followers/1
  def show; end

  # GET /followers/new
  def new
    @follower = Follower.new
  end

  # GET /followers/1/edit
  def edit; end

  # POST /followers
  def create
    @follower = Follower.new(follower_params)

    if @follower.save
      message = "Follower was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @follower, notice: message
      end
    else
      render :new
    end
  end

  # PATCH/PUT /followers/1
  def update
    if @follower.update(follower_params)
      redirect_to @follower, notice: "Follower was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /followers/1
  def destroy
    @follower.destroy
    message = "Follower was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to followers_url, notice: message
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_follower
    @follower = Follower.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def follower_params
    params.require(:follower).permit(:follower_id, :receiver_id)
  end
end
