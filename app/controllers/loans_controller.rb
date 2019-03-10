class LoansController < ApplicationController
  def new
    @loan = Loan.new
  end

  def index
    @loans = Loan.all
  end





  def loan_params
    params.require(:loan).permit(:loan_amount, :term, :interest_rate, :request_date, :amortization_type)
  end
end
