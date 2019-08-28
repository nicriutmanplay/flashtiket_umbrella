defmodule FlashtiketWeb.PageController do
  use FlashtiketWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
