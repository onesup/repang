#encoding: utf-8
class UsersController < ApplicationController
  # POST /events
  # POST /events.json
  def create
    @event = Event.find(params[:user][:event_ids])
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @event, notice: '응모 완료되었습니다.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
