require "TDD"
require "rspec"



  describe "#my_uniq" do

    it "takes in an array" do
      expect(my_uniq([1,2,3])).to raise_error(ArgumentError)
    end

    it "returns an array" do
      expect(my_uniq([1,2,3])).to be_a(Array)
    end

    it "returns an array with no duplicates" do
      expect( my_uniq([1,2,1,3,4,3]) ).to eq( [1,2,3,4] )
    end

  end
