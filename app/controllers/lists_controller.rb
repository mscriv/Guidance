class ListsController < InheritedResources::Base

  private

    def list_params
      params.require(:list).permit(:month, :items)
    end
end

