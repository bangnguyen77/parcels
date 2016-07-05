require('rspec')
require('parcels')

describe(Parcels) do
  describe("#volume") do
    it("returns the volume by giving the product of all dimensions") do
      test_volume = Parcels.new(5, 6, 7)
      expect(test_volume.volume()).to(eq(210))
    end
  end
end
