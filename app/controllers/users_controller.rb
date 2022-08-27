# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :is_school_admin, except: %i[ index]
  before_action :authenticate_user!

  def index
    @title = "Users"
    @users = User.all.order(created_at: :desc)
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "user was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end


  private

    def set_user
      @user = User.find(params[:id])
    end


  def user_params
      params.require(:user).permit(:role, :name)
    end

end
