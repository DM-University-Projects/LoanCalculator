class AmortizationScheduleGenerator
<<<<<<< HEAD
  include DifferentFirstPaymentAmortizationScheduleCreator
  include EqualPaymentsAmortizationScheduleCreator
=======
   include FirstPaymentSchedule
   include EqualPaymentsSchedule
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389

  def initialize(loan)
    @loan = loan
  end

  def perform
    if @loan.amortization_type == 'First month different payment'
<<<<<<< HEAD
      different_first_payment_amortization_schedule(principal_amount: @loan.loan_amount,
=======
      first_payment_schedule(principal_amount: @loan.loan_amount,
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
                                                                interest_rate: @loan.interest_rate,
                                                                monthly: @loan.monthly,
                                                                request_date: @loan.request_date)
    else
<<<<<<< HEAD
      equal_payments_amortization_schedule(principal_amount: @loan.loan_amount,
=======
      equal_payments_schedule(principal_amount: @loan.loan_amount,
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
                                                       interest_rate: @loan.interest_rate,
                                                       monthly: @loan.monthly,
                                                       request_date: @loan.request_date)
    end
  end
end
