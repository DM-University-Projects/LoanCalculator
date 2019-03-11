# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :loan do
    loan_amount 10000
    interest_rate 1.5
<<<<<<< HEAD
    monthly 12
=======
    term 12
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
    request_date '2017-06-15'
    amortization_type 'Equal payments'
  end
end
