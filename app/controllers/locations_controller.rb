class LocationsController < InheritedResources::Base

  private

    def location_params
      params.require(:location).permit(:school, :test_code, :school_code, :test_id)
    end
end

