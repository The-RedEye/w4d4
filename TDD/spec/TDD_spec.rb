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

  describe "#my_stock_picker" do

    let(:days){my_stock_picker([10,25,100,4,50])}
    let(:arr){[10,25,100,4,50]}

    it "takes in an array" do 
      expect{days}.not_to raise_error
    end

    it "returns an array" do
      expect(days).to be_a(Array)
    end

    it "returns an array of length 2" do
      expect(days.length).to eq(2)
    end

    it "to be profitable" do 
      expect(arr[days.first]).to be <(arr[days.last]) 
    end
  end

  #Declare another let


  describe "Tower_of_Hanoi" do 

    let(:towers){Towers_of_Hanoi.new}

    it "Has first tower empty" do
      expect(towers.tower_1).to eq([])
    end

    it "Has second tower empty" do 
      expect(towers.tower_2).to eq([])
    end

    it "Has three tower has all the discs" do 
      expect(towers.tower_3.length).to eq(towers.num_discs)
    end

    it "The game starts more than 0 disc" do
      expect(towers.num_discs).to be >0
    end

  end

  

