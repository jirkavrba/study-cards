class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @collections = current_user.collections.recent
  end
end
