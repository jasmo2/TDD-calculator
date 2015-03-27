class Calculator

	def sumar(*args)
		result = 0
		args.each { |item|
			if result == 0
				result = item
			else
				result += item		
			end			
		}
		return result
	end
	def restar(*args)
		result = 0
		args.each { |item|
			if result == 0
				result = item
			else
				result -= item		
			end			
		}
		return result
	end
	def multiplicar(*args)
		result = 0
		args.each { |item|
			if result == 0
				result = item
			else
				result *= item		
			end			
		}
		return result
	end
	def dividir(*args)
		result = 0
		begin
			args.each { |item|
				if result == 0
					result = item
				else
					result = result / item	
				end
			}
		rescue ZeroDivisionError 
			return "Division by Zero isn't allow"
		end
		return result
	end
	def evaluar(arg)
		if arg.class == String
			return eval arg
		else
			return "The method just evaluate strings"
		end
	end
	
end