class RequirementsController < InheritedResources::Base

  private

    def requirement_params
      params.require(:requirement).permit(:year, :description)
    end
end

