require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('returns volume of parcel') do
      test_parcel = Parcel.new(2,5,3)
      expect(test_parcel.volume(2,5,3)).to(eq(30))
    end
  end
end
