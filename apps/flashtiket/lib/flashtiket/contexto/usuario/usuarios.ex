defmodule Flashtiket.Usuarios do
  use Ecto.Schema

  schema "usuarios" do
    field :nombre, :string
    field :cc, :string
    field :celular, :string
    field :usuario, :string
    field :contraseña, :string
    timestamps()
  end
end
