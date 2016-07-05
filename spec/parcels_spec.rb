require('rspec')
require('ruby-measurement')
require('parcels')

describe(Parcels) do
  describe("#volume") do
    it("returns the volume by giving the product of all dimensions") do
      parcel_volume = Parcels.new(5, 6, 7, 300)
      expect(parcel_volume.volume()).to(eq(210))
    end
  end

  describe("#cost_to_ship") do
    it("returns the cost of shipping by giving the product of the volume and weight") do
      shipping_cost = Parcels.new(3, 4, 5, 200)
      expect(shipping_cost.cost_to_ship()).to(eq(12000))
    end
  end
end
