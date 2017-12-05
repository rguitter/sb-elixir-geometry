defmodule Geometry.Shape do
  @enforce_keys [:kind, :dimensions]
  defstruct [:kind, :dimensions] 

  def hello, do: :world

  def total_area(shapes) when is_list(shapes) and length(shapes) > 0 do 
    areas = Enum.map(shapes, fn(shape) -> area(shape) end)
    Enum.reduce(areas, fn(area, acc) -> area + acc end)
  end

  def total_area(shapes) do 
    IO.puts("Discard")
    0
  end

  def area(shape) when is_map(shape) do
    case shape.kind do 
      :circle -> circle_area(shape.dimensions)
      :rectangle -> rectangle_area(shape.dimensions)
      _ -> 
        IO.puts("Discard")
        0
    end
  end

  def area(shape) do
    0
  end
    
  defp circle_area(radius) do
    3.14 * radius * radius
  end

  defp rectangle_area(dimensions) do
    dimensions.length * dimensions.width
  end

end