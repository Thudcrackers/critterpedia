class SouthernMonthsController < ApplicationController
  before_action :set_month, only: [:show, :edit, :update, :destroy]

  # GET /months
  # GET /months.json
  def index
    @months = SouthernMonth.all.order('id DESC')
  end

  # GET /months/1
  # GET /months/1.json
  def show
    @months = SouthernMonth.all.order('id DESC')
    @bugs = @month.bugs
    @fish = @month.fish
  end

  # GET /months/new
  def new
    @month = SouthernMonth.new
  end

  # GET /months/1/edit
  def edit
  end

  # POST /months
  # POST /months.json
  def create
    @month = SouthernMonth.new(month_params)

    respond_to do |format|
      if @month.save
        format.html { redirect_to @month, notice: 'Month was successfully created.' }
        format.json { render :show, status: :created, location: @month }
      else
        format.html { render :new }
        format.json { render json: @month.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /months/1
  # PATCH/PUT /months/1.json
  def update
    respond_to do |format|
      if @month.update(month_params)
        format.html { redirect_to @month, notice: 'Month was successfully updated.' }
        format.json { render :show, status: :ok, location: @month }
      else
        format.html { render :edit }
        format.json { render json: @month.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /months/1
  # DELETE /months/1.json
  def destroy
    @month.destroy
    respond_to do |format|
      format.html { redirect_to months_url, notice: 'Month was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_month
      @month = SouthernMonth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def month_params
      params.require(:month).permit(:name)
    end
end
