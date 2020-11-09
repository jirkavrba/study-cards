class CollectionController < ApplicationController
  before_action :authenticate_user!

  def new; end

  def create
    @collection = current_user.collections.new params.require(:collection).permit(:title, :is_private)
    @collection.save

    redirect_to collection_path(@collection)
  end

  def show
    @collection = Collection.find params[:id]
    @cards = @collection.cards

    redirect_to dashboard_url unless can_view?(@collection)
  end

  private

  def can_edit?(collection)
    collection.user == current_user
  end

  def can_view?(collection)
    can_edit?(collection) or !collection.is_private
  end
end
