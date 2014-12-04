class CounselorsController < InheritedResources::Base

  private

    def counselor_params
      params.require(:counselor).permit(:name, :bio, :contact)
    end
end

