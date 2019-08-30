defmodule FlashtiketFromentWeb.Router do
  use FlashtiketFromentWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FlashtiketFromentWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/formulario_crear_usuario", UsuarioController, :index
    post "/formulario_crear_usuario", UsuarioController, :crear
  end

  # Other scopes may use custom stacks.
  # scope "/api", FlashtiketFromentWeb do
  #   pipe_through :api
  # end
end
