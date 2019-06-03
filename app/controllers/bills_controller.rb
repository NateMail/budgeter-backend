class BillsController < ProtectedController
  before_action :set_bill, only: [:show, :update, :destroy]

  # GET /bills
  def index
    @bills = current_user.bills.all

    render json: @bills
  end

  # GET /bills/1
  def show
    @bills = current_user.bills.find(params[:id])
    render json: @bill
  end

  # POST /bills
  def create
    @bill = current_user.bills.build(bill_params)

    if @bill.save
      render json: @bill, status: :created, location: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bills/1
  def update
    if @bill.update(bill_params)
      render json: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bills/1
  def destroy
    @bill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
        @bill = current_user.bills.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bill_params
      params.require(:bill).permit(:name, :amount, :due, :user_id)
    end
end
