require('rspec')
require('parcels')

describe(Parcels) do
  describe("#volume") do
    it("returns the volume of a parcel") do
      test_parcel = Parcels.new(5, 6, 7, 4)
      expect(test_parcel.volume()).to(eq(210))
    end
  end

  describe("#cost_to_ship") do
    it("returns the shipping cost for a parcel depending on volume, weight and distance") do
      test_parcel = Parcels.new(5, 6, 7, 4)
      expect(test_parcel.cost_to_ship(100)).to(eq(117))
    end
  end
end
