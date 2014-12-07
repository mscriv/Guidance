class DiplomasController < InheritedResources::Base

  private

    def diploma_params
      params.require(:diploma).permit(:name, :requirement_id)
    end
end

