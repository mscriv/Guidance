class TestsController < InheritedResources::Base

  private

    def test_params
      params.require(:test).permit(:name, :test_date, :registration_deadline, :description)
    end
end

