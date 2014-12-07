class SchoolsController < InheritedResources::Base

  private

    def school_params
      params.require(:school).permit(:name, :address, :contact)
    end
end

