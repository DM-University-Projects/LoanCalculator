require 'rails_helper'

RSpec.describe AmortizationScheduleCalculator do
  describe 'initialize' do
    it 'sets @loan instance variable' do
      loan = build :loan
      generator_service = AmortizationScheduleCalculator.new(loan)
      expect(generator_service.instance_variable_get(:@loan)).to eq loan
    end
  end

  describe 'perform' do
    let(:loan) { build :loan }
    it 'should use equal payment amortization schedule calculator library if amortization type is Equal Payments' do
      generator_service = AmortizationScheduleCalculator.new(loan)
      expect(generator_service).to receive(:equal_payments_schedule) { 'something' }
      expect(generator_service.perform).to eq('something')
    end

    it 'should use different first payment amortization schedule generator library if amortization type is Different first payment' do
      loan.amortization_type = 'First month different payment'
      generator_service = AmortizationScheduleGenerator.new(loan)
      expect(generator_service).to receive(:first_payment_schedule) { 'something' }
      expect(generator_service.perform).to eq('something')
    end
  end
end
