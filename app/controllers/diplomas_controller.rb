class DiplomasController < InheritedResources::Base


  def index
    @requirement = Requirement.find(params[:requirement_id])

  end

  def new
    @requirement = Requirement.find(params[:requirement_id])
    @diploma = @requirement.diplomas.new

  end

  def create
    @requirement = Requirement.find(params[:requirement_id])
    @diploma = @requirement.diplomas.new(diploma_params)

    respond_to do |format|
      if @diploma.save
        format.html { redirect_to requirement_diplomas_path, notice: 'Diploma was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @diploma.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def diploma_params
      params.require(:diploma).permit(:name, :requirement_id)
    end
end

