defmodule Geometry.Shape do
  @enforce_keys [:kind, :dimensions]
  defstruct [:kind, :dimensions] 

  def total_area(shapes) when is_list(shapes) and length(shapes) > 0 do 
    Enum.reduce(shapes, 0, fn(shape, acc) -> area(shape) + acc end)
  end

  def total_area(_) do 
    IO.puts("Discard")
    0
  end

  def area(%Geometry.Shape{kind: :circle, dimensions: dimensions}), do: 3.14 * dimensions * dimensions

  def area(%Geometry.Shape{kind: :rectangle, dimensions: dimensions}), do: dimensions.length * dimensions.width

  def area(_) do
    IO.puts("Discard")
    0
  end
    
end