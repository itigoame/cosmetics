class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    if item.save
      redirect_to admin_items_path
    else
      @item = Item.new
      render :new
    end
  end

  def index
    @items = Item.all
  end

  def show
  end

  def edit
  end

  private

  def item_params
    params.require(:item).permit(:name, :body, :price, :image)
  end
end
