defmodule BtctickerWeb.PageController do
  use BtctickerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
