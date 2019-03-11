class LoansController < ApplicationController
  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.new(loan_params)
    if @loan.save
<<<<<<< HEAD
      redirect_to generate_amortization_schedule_loan_path(@loan)
=======
      redirect_to calculate_amortization_schedule_loan_path(@loan)
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
    else
      render :new
    end
  end

<<<<<<< HEAD
  def generate_amortization_schedule
=======
  def calculate_amortization_schedule
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
    @loan = Loan.find(params[:id])
    @amortization_schedule = @loan.amortization_schedule
  end

  def index
    @loans = Loan.all
  end

  private

  def loan_params
    params.require(:loan).permit(:loan_amount, :monthly, :interest_rate, :request_date, :amortization_type)
  end
end
