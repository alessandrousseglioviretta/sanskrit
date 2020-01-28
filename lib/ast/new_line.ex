defmodule Sanskrit.Ast.NewLine do
  use Sanskrit.Parser
  defstruct newline: nil

  def new(_), do: %__MODULE__{}

  def parser(_prev \\ nil) do
    newline() |> map(fn newline -> new(newline) end)
  end
end