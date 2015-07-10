class WorkrowsController < ApplicationController
  before_action :set_workrow, only: [:show, :edit, :update, :destroy]

  # GET /workrows
  # GET /workrows.json
  def index
    @workrows = Workrow.all
  end

  # GET /workrows/1
  # GET /workrows/1.json
  def show
  end

  # GET /workrows/new
  def new
    @workrow = Workrow.new
  end

  # GET /workrows/1/edit
  def edit
  end

  # POST /workrows
  # POST /workrows.json
  def create
    @workrow = Workrow.new(workrow_params)

    respond_to do |format|
      if @workrow.save
        format.html { redirect_to @workrow, notice: 'Workrow was successfully created.' }
        format.json { render :show, status: :created, location: @workrow }
      else
        format.html { render :new }
        format.json { render json: @workrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workrows/1
  # PATCH/PUT /workrows/1.json
  def update
    respond_to do |format|
      if @workrow.update(workrow_params)
        format.html { redirect_to @workrow, notice: 'Workrow was successfully updated.' }
        format.json { render :show, status: :ok, location: @workrow }
      else
        format.html { render :edit }
        format.json { render json: @workrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workrows/1
  # DELETE /workrows/1.json
  def destroy
    @workrow.destroy
    respond_to do |format|
      format.html { redirect_to workrows_url, notice: 'Workrow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workrow
      @workrow = Workrow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workrow_params
      params.require(:workrow).permit(:date, :task, :hours_worked, :notes)
    end
end
