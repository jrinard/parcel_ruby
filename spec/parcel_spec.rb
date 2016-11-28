require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('returns volume of parcel') do
      test_parcel = Parcel.new(2,5,3,2)
      expect(test_parcel.volume()).to(eq(30.0))
    end
  end
  describe('#cost_to_ship') do
    it('returns the cost to ship a parcel') do
      test_parcel = Parcel.new(2,5,3,2)
      expect(test_parcel.cost_to_ship()).to(eq(3.0))
      end
  end
end
