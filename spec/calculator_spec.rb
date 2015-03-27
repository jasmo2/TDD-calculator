require_relative '../calculator'

RSpec.describe Calculator do

	let(:calculator){ Calculator.new }

	describe '#sumar' do
		it "returns the arguments' addition" do
			expect(calculator.sumar(2,2)).to eq(4)
		end
		it "returns the arguments' addition" do
			expect(calculator.sumar(2,2,2,2,-2)).to eq(6)
		end
	end

	describe '#restar' do
		it "returns the arguments' substraction" do
			expect(calculator.restar(6,2)).to eq(4)
		end
		it "returns the arguments' substraction" do
			expect(calculator.restar(20,10,-5)).to eq(15)
		end
	end
	
	describe '#multiplicar' do
		it "returns the arguments' multiplication" do
			expect(calculator.multiplicar(4,4)).to eq(16)
		end
		it "returns the arguments' multiplication" do
			expect(calculator.multiplicar(4,4,4,-4)).to eq(-256)
		end
	end
	
	describe '#dividir' do
		it "returns the arguments' division" do
			expect(calculator.dividir(8,2)).to eq(4)
		end
		it "should prevent 0 division" do
			expect(calculator.dividir(8,0)).to eq("Division by Zero isn't allow")
		end
	end
	
	describe '#evaluar' do
		it "evalutate if is a string" do
			expect(calculator.evaluar(4+3)).to eq("The method just evaluate strings")
		end
		it "evalutate the string" do
			expect(calculator.evaluar("(2+4)*(4/2)")).to eq(12)
		end
	end

end