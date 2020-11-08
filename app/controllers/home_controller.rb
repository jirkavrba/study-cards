class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    redirect to: 'home#dashboard' if user_signed_in?

    render html: 'Index'
  end

  def dashboard
    render html: 'Dashboard'
  end
end
