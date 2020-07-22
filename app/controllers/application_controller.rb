class ApplicationController < ActionController::Base
  before_action(:find_user)

  private

  def find_user
    @user = User.first
  end
end
