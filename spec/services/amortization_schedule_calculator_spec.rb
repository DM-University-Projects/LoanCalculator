require 'rails_helper'

<<<<<<< HEAD
RSpec.describe AmortizationScheduleGenerator do
  describe 'initialize' do
    it 'sets @loan instance variable' do
      loan = build :loan
      generator_service = AmortizationScheduleGenerator.new(loan)
=======
RSpec.describe AmortizationScheduleCalculator do
  describe 'initialize' do
    it 'sets @loan instance variable' do
      loan = build :loan
      generator_service = AmortizationScheduleCalculator.new(loan)
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
      expect(generator_service.instance_variable_get(:@loan)).to eq loan
    end
  end

  describe 'perform' do
    let(:loan) { build :loan }
<<<<<<< HEAD
    it 'should use equal payment amortization schedule generator library if amortization type is Equal Payments' do
      generator_service = AmortizationScheduleGenerator.new(loan)
      expect(generator_service).to receive(:equal_payments_amortization_schedule) { 'something' }
=======
    it 'should use equal payment amortization schedule calculator library if amortization type is Equal Payments' do
      generator_service = AmortizationScheduleCalculator.new(loan)
      expect(generator_service).to receive(:equal_payments_schedule) { 'something' }
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
      expect(generator_service.perform).to eq('something')
    end

    it 'should use different first payment amortization schedule generator library if amortization type is Different first payment' do
      loan.amortization_type = 'First month different payment'
      generator_service = AmortizationScheduleGenerator.new(loan)
<<<<<<< HEAD
      expect(generator_service).to receive(:different_first_payment_amortization_schedule) { 'something' }
=======
      expect(generator_service).to receive(:first_payment_schedule) { 'something' }
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
      expect(generator_service.perform).to eq('something')
    end
  end
end
