defmodule FlashtiketFromentWeb.PageController do
  use FlashtiketFromentWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
