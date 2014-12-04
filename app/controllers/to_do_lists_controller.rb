class ToDoListsController < InheritedResources::Base

  private

    def to_do_list_params
      params.require(:to_do_list).permit(:month)
    end
end

