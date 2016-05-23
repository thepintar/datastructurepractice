class FixedArray

	attr_reader :array


	def initialize(size)
		@array = Array.new(size)
	end

	def get(index)
		raise IndexError if index >= @array.length
		return @array[index]
	end

	def set(index, element)
		raise IndexError if index >= @array.length
		@array[index] = element
	end


end