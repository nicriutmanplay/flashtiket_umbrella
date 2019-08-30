defmodule FlashtiketFromentWeb.UsuarioController do
  use FlashtiketFromentWeb, :controller
  alias Flashtiket.UsuariosConsulta
  alias Flashtiket.Usuarios

  def index(conn, _params) do
    changeset = UsuariosConsulta.changeset(%Usuarios{})
    render conn, "index.html", changeset: changeset
  end

  def crear(conn, %{"usuarios" => usuario}) do
  IO.inspect conn
  usuarios = redirect(conn, external: "http://localhost:4000/api/obtener_usuarios")
  IO.inspect usuarios
  end

end
