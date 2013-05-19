#encoding:utf-8
class Admin::UsersController < ApplicationController
  before_filter :require_login
  
  def index
  end

  def show
  end

  def edit
    @user = current_user
  end
  
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to edit_admin_user_path, notice: '사용자 정보가 수정되었습니다.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  end
end
