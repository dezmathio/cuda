defmodule TemplateHelpersTest do
  use ExUnit.Case
  import Cuda.Template.Helpers

  describe "env/2" do
    test "Get environment variable from context" do
      ctx = %Cuda.Template.Context{env: %Cuda.Env{int_size: 16}}
      assert 16 == env(ctx, :int_size)
    end
  end

  describe "var/2" do
    test "Get variable from context" do
      ctx = %Cuda.Template.Context{var: %{var: 16}}
      assert 16 == var(ctx, :var)
    end
  end

end