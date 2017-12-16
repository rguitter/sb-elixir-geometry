defmodule Geometry.ShapeTest do
    use ExUnit.Case
    #use Geometry.Shape
    #doctest Geometry.Shape
    #import Geometry.Shape
    require Geometry.Shape
    alias Geometry.Shape, as: Shape

    test "greets the world" do
      #assert hello() == :world
    end
  
    test "not a shape area" do
      assert Shape.area(nil) == 0
    end

    test "circle area" do
      assert Shape.area(%Shape{kind: :circle, dimensions: 0}) == 0
    end

    test "rectanble area" do
      assert Shape.area(%Shape{kind: :rectangle, dimensions: %{length: 1, width: 2}}) == 2
    end

    test "total area" do
      assert Shape.total_area([
            %Shape{kind: :circle, dimensions: 0},
            %Shape{kind: :rectangle, dimensions: %{length: 1, width: 2}}
            ]) == 2
    end

    test "not a list area" do
      assert Shape.total_area(nil) == 0
    end
  
    test "empty list area" do
      assert Shape.total_area([]) == 0
    end
    
end
  