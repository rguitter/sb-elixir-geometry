defmodule Geometry.ShapeTest do
    use ExUnit.Case
    #use Geometry.Shape
    #doctest Geometry.Shape
    #import Geometry.Shape
    require Geometry.Shape

    test "greets the world" do
      #assert hello() == :world
    end
  
    test "not a shape area" do
      assert Geometry.Shape.area(nil) == 0
    end

    test "circle area" do
      assert Geometry.Shape.area(%Geometry.Shape{kind: :circle, dimensions: 0}) == 0
    end

    test "rectanble area" do
      assert Geometry.Shape.area(%Geometry.Shape{kind: :rectangle, dimensions: %{length: 1, width: 2}}) == 2
    end

    test "total area" do
      assert Geometry.Shape.total_area([
            %Geometry.Shape{kind: :circle, dimensions: 0},
            %Geometry.Shape{kind: :rectangle, dimensions: %{length: 1, width: 2}}
            ]) == 2
    end

    test "not a list area" do
      assert Geometry.Shape.total_area(nil) == 0
    end
  
    test "empty list area" do
      assert Geometry.Shape.total_area([]) == 0
    end
    
end
  