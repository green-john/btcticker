defmodule BtctickerWeb.TickerLive do
  use BtctickerWeb, :live_view

  def mount(_params, _, socket) do
    if connected?(socket), do: Process.send_after(self(), :update, 30000)

    {:ok, fetch_price(socket)}
  end

  def handle_info(:update, socket) do
    Process.send_after(self(), :update, 30000)
    
    {:noreply, fetch_price(socket)}
  end

  defp fetch_price(socket) do
    case Btcticker.PriceFetcher.fetch_price() do
      {:ok, price} ->
        IO.inspect(price)
        assign(socket, :current_price, price)

      {:error, reason} ->
        assign(socket, current_price: 0, error: reason)
    end
  end
end
