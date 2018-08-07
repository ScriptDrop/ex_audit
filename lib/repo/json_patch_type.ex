defmodule ExAudit.Type.JsonPatch do
  @behaviour Ecto.Type

  def cast(a), do: {:ok, a}
  def dump(patch), do: {:ok, Jason.encode!(patch)}
  def load(json), do: {:ok, Jason.decode!(json)}
  def type, do: :json
end
