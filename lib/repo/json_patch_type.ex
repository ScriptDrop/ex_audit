defmodule ExAudit.Type.JsonPatch do
  @behaviour Ecto.Type

  def cast(a), do: {:ok, a}
  def dump(patch), do: {:ok, :jiffy.encode(patch)}
  def load(json), do: {:ok, :jiffy.decode(json)}
  def type, do: :json
end
