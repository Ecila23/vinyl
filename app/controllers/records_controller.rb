class RecordsController < ApplicationController
  before_action(:find_record, only: %i[show edit update destroy])

  def index
    @records = Record.all
  end

  def new
    @record = Record.new

    render(
      :new,
      locals: {
        method: :post,
        url: records_path
      }
    )
  end

  def create
    @record = Record.new(record_params)

    return render :new unless @record.save

    flash[:success] = 'Record Created!'
    redirect_to(record_path(@record.slug))
  end

  def show; end

  def edit
    render(
      :edit,
      locals: {
        method: :patch,
        url: record_path(@record.slug)
      }
    )
  end

  def update
    if @record.update(record_params)
      flash[:success] = 'Record Updated'
      return redirect_to record_path(@record.slug)
    end

    flash[:warning] = 'Something broken'
    render :edit
  end

  def destroy
    @record.delete

    flash[:success] = "#{@record.title} Deleted"
    redirect_to(records_path)
  end

  private

  def find_record
    @record = Record.find_by(slug: params[:slug])
  end

  def record_params
    params.require(:record).permit(
      :artist,
      :title,
      :year,
    )
  end
end
