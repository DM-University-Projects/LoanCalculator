class AmortizationScheduleGenerator
   include FirstPaymentSchedule
   include EqualPaymentsSchedule

  def initialize(loan)
    @loan = loan
  end

  def perform
    if @loan.amortization_type == 'First month different payment'
      first_payment_schedule(principal_amount: @loan.loan_amount,
                                                                interest_rate: @loan.interest_rate,
                                                                monthly: @loan.monthly,
                                                                request_date: @loan.request_date)
    else
      equal_payments_schedule(principal_amount: @loan.loan_amount,
                                                       interest_rate: @loan.interest_rate,
                                                       monthly: @loan.monthly,
                                                       request_date: @loan.request_date)
    end
  end
end
