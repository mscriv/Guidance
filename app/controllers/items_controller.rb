class ItemsController < ApplicationController
  before_action :find_list

  def index
  end

  def new
    @item = @list.items.new
  end

  def edit
    @item = @list.items.find(params[:id])
  end

  def destroy
    @item = @list.items.find(params[:id])
    if @item.destroy
      flash[:success] = 'Item has been deleted.'
    else
      flash[:error] = 'Unable to delete the item'
    end
  end

  def url_options
    { list_id: params[:list_id] }.merge(super)
  end

  def update
    @item = @list.items.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:success] = 'Saved List item'
      redirect_to list_items_path
    else
      flash[:error] = 'Unable to save list item'
      render action: :edit
    end
  end

  def create
    @item = @list.items.new(item_params)
    if @item.save
      flash[:success] = 'Added new item'
      redirect_to list_items_path
    else
      flash[:error] = 'Unable to add item'
      render action: :new
    end
  end

  private

  def find_list
    @list = List.find(params[:list_id])
  end

  def item_params
    params[:item].permit(:name)
  end

end
