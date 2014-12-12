class TestsController < InheritedResources::Base


  def search
    @tests = Test.where('name like ?', "%#{params[:search_query]}").order(params[:sort]).page(params[:page]).per(5)
    render :template => 'tests/index'
  end

  def index
    @tests = Test.order(params[:sort]).page(params[:page]).per(5)
  end

  private

    def test_params
      params.require(:test).permit(:name, :test_date, :registration_deadline, :description)
    end
end

