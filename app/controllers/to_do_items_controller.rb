class ToDoItemsController < InheritedResources::Base

  private

    def to_do_item_params
      params.require(:to_do_item).permit(:item, :to_do_list_id)
    end
end

