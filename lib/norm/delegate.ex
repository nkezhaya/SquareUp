# TODO delete when https://github.com/keathley/norm/pull/96 merged and released
defmodule Norm.Delegate do
  def delegate(predicate), do: Norm.Core.Delegate.build(predicate)
end
