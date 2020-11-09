class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @collections = current_user.collections
    @recent = @collections.recent
  end
end
