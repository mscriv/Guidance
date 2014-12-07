class SubjectsController < InheritedResources::Base

  def index
    @diploma = Diploma.find(params[:diploma_id])

  end

  def new
    @diploma = Diploma.find(params[:diploma_id])
    @subject = @diploma.subject.new

  end

  def create
    @diploma = Diploma.find(params[:diploma_id])
    @subject = @diploma.subject.new(subject_params)

    respond_to do |format|
      if @subject.save
        format.html { redirect_to diploma_subjects_path, notice: 'Subject was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @diploma.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def subject_params
      params.require(:subject).permit(:name, :requisite, :diploma_id)
    end
end

