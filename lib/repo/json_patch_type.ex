defmodule ExAudit.Type.JsonPatch do
  @behaviour Ecto.Type

  def cast(a) when is_map(a) do: {:ok, a}
  def cast(_), do: :error

  def dump(patch), do: {:ok, Jason.encode!(patch)}

  def load(json), do: {:ok, Jason.decode!(json)}

  def type, do: :map
end
