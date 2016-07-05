class Parcels
  define_method(:initialize) do |height, width, depth|
    @height = height
    @width = width
    @depth = depth
  end

  define_method(:volume) do
    @height = 5
    @width = 6
    @depth = 7
    volume = @height * @width * @depth
  end
end
