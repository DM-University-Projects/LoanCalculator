require 'rails_helper'
<<<<<<< HEAD
require 'equal_payments_amortization_schedule_creator'
=======
require 'equal_payments_schedule'
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389

RSpec.describe Loan, type: :model do
  it { is_expected.to have_db_column(:loan_amount).of_type(:integer) }
  it { is_expected.to have_db_column(:interest_rate).of_type(:float) }
  it { is_expected.to have_db_column(:request_date).of_type(:date) }
  it { is_expected.to have_db_column(:monthly).of_type(:integer) }
  it { is_expected.to have_db_column(:amortization_type).of_type(:string) }

  it { is_expected.to validate_presence_of :loan_amount }
  it { is_expected.to validate_presence_of :interest_rate }
  it { is_expected.to validate_presence_of :monthly }
  it { is_expected.to validate_presence_of :request_date }
  it { is_expected.to validate_presence_of :amortization_type }

  it { is_expected.to validate_inclusion_of(:amortization_type).in_array(['Equal payments', 'First month different payment']) }

  it { is_expected.to validate_numericality_of(:loan_amount).is_greater_than(0) }
  it { is_expected.to validate_numericality_of(:loan_amount).only_integer }
  it { is_expected.to validate_numericality_of(:monthly).only_integer }
  it { is_expected.to validate_numericality_of(:monthly).is_greater_than_or_equal_to(1) }
  it { is_expected.to validate_numericality_of(:interest_rate).is_greater_than(0) }

  describe 'validatiion for the interest rate format' do
    let(:loan) { build(:loan, interest_rate: 12.555) }
    it { is_expected.not_to allow_value(loan.interest_rate).for(:interest_rate) }
  end

  describe 'validation for request time' do
    let(:loan) { build(:loan) }
    it 'is valid with current date' do
      expect(loan).to be_valid
    end

    it 'is valid with future date' do
      loan.request_date = '2100-06-25'
      expect(loan).not_to be_valid
    end
  end

  describe 'amortization schedule' do
    let(:loan) { build(:loan) }
<<<<<<< HEAD
    it 'should invoke AmortizationScheduleGenerator sevice' do
      expect_any_instance_of(AmortizationScheduleGenerator).to receive(:perform) { 'something' }
=======
    it 'should invoke AmortizationScheduleCalculator sevice' do
      expect_any_instance_of(AmortizationScheduleCalculator).to receive(:perform) { 'something' }
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
      expect(loan.amortization_schedule).to eq('something')
    end
  end
end
