require_relative '../fixed_array'

describe "fixed_array" do

	let(:test_array) {FixedArray.new(6)}

	it "instantiates a new FixedArray with space for n elements" do
		expect(test_array).to be_a(FixedArray)
		expect(test_array.array.count).to eq(6)
	end

 #this is a comment
	it "gets a value from the array at a specified index" do
		expect(test_array.get(3)).to eq(nil)
	end

	it "raises an exception if the specified index is not included in the array" do
		expect{test_array.get(6)}.to raise_error(IndexError)
	end

	it "sets a value in the array at a specific index and returns the element" do
		expect(test_array.set(2, "frog")).to eq("frog")
		expect(test_array.get(2)).to eq("frog")
	end

	it "raises an exception if the specified index is not included in the array" do
		expect{test_array.set(6, "x")}.to raise_error(IndexError)
	end

end