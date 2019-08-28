defmodule Flashtiket.Repo.Migrations.CrearUsuario do
  use Ecto.Migration

  def change do
    create table(:usuarios) do
      add :nombre, :string
      add :cc, :string
      add :celular, :string
      add :usuario, :string
      add :contraseña, :string
      timestamps()
    end
    create unique_index(:usuarios, [:cc])
  end
end
