class LocationsController < InheritedResources::Base


  def index
    @test = Test.find(params[:test_id])

  end

  def new
    @test = Test.find(params[:test_id])
    @location = @test.locations.new

  end

  def create
    @test = Test.find(params[:test_id])
    @location = @test.locations.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to test_locations_path, notice: 'Location was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end



  private

    def location_params
      params.require(:location).permit(:school, :test_code, :school_code, :test_id)
    end
end

