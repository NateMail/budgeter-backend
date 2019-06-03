class MonthliesController < ProtectedController
  before_action :set_monthly, only: [:show, :update, :destroy]

  # GET /monthlies
  def index
    @monthlies = current_user.monthly.all

    render json: @monthlies
  end

  # GET /monthlies/1
  def show
    @monthlies = current_user.monthly.find(params[:id])
    render json: @monthly
  end

  # POST /monthlies
  def create
    @monthly = current_user.monthly.build(monthly_params)

    if @monthly.save
      render json: @monthly, status: :created, location: @monthly
    else
      render json: @monthly.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /monthlies/1
  def update
    if @monthly.update(monthly_params)
      render json: @monthly
    else
      render json: @monthly.errors, status: :unprocessable_entity
    end
  end

  # DELETE /monthlies/1
  def destroy
    @monthly.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monthly
      @monthly = current_user.monthly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def monthly_params
      params.require(:monthly).permit(:income, :deposited)
    end
end
