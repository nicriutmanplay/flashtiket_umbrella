defmodule FlashtiketWeb.Router do
  use FlashtiketWeb, :router

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

  scope "/api", FlashtiketWeb do
    pipe_through :api

    post "/crear_usuario", UsuarioController, :crear
    get "/obtener_usuarios_cc", UsuarioController, :obtener
    put "/actualizar_usuarios", UsuarioController, :actualizar
    delete "/borrar_usuario", UsuarioController, :borrar

    post "/crear_planilla", PlanillaController, :crear
    get "/obtener_planilla_id", PlanillaController, :obtener_id
    get "/obtener_planilla_fecha", PlanillaController, :obtener_fecha
    get "/obtener_planilla_fecha_y_hora", PlanillaController, :obtener_fecha_y_hora
    get "/obtener_planilla_activa", PlanillaController, :obtener_activa
    put "/actualizar_planilla", PlanillaController, :actualizar
    delete "/borrar_planilla", PlanillaController, :borrar

    post "/crear_reserva", ReservaController, :crear
    get "/obtener_reserva_cc", ReservaController, :obtener_cc
    get "/obtener_reserva_id", ReservaController, :obtener_id
    put "/actualizar_reserva", ReservaController, :actualizar
    delete "/borrar_reserva", ReservaController, :borrar

  end

  # Other scopes may use custom stacks.
  # scope "/api", FlashtiketWeb do
  #   pipe_through :api
  # end
end
