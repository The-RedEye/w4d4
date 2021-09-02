require "TDD"
require "rspec"



  describe "#my_uniq" do

    it "takes in an array" do
      expect{my_uniq([1,2,3,4])}.not_to raise_error
    end

    it "returns an array" do
      expect(my_uniq([1,2,3])).to be_a(Array)
    end

    it "returns an array with no duplicates" do
      expect( my_uniq([1,2,1,3,4,3]) ).to eq( [1,2,3,4] )
    end

  end

  describe "Array#two_sum" do 
    let(:arr){ [-1, 0, 2, -2, 1].two_sum }

    it "returns an array" do 
      expect(arr).to be_a(Array)
    end

    it "should pass test case: [-1, 0, 2, -2, 1] to [[0, 4], [2, 3]]" do 
      # expect{ Array.two_sum([-1, 0, 2, -2, 1]) }.to eq([[0, 4], [2, 3]])
      expect(arr).to eq([[0, 4], [2, 3]])
    end
  end

  describe "my_transpose" do 
    let(:arr){ my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ])
    }

    it "takes in an array" do
      expect{arr}.not_to raise_error
    end

    it "returns an array" do
      expect(arr).to be_a(Array)
    end

    it "square to 2D array" do 
      expect(arr.length).to eq(arr[0].length)
    end

    it "returns a transposed array" do
      expect(arr).to eq( [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ] )
      end
  end

  



  

