class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    redirect_to dashboard_path if user_signed_in?
  end

  def dashboard
    render html: 'Dashboard'
  end
end
