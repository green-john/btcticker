defmodule Btcticker.PriceFetcher do
  def apiUrl(vsCurrency) do
    "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=#{vsCurrency}"
  end

  def fetch_price(currency \\ "usd") do
    url = apiUrl(currency)

    case HTTPoison.get(url) do
      {:ok, resp} -> extractPrice(resp.body)
      error -> IO.inspect(error)
    end
  end

  defp extractPrice(rawBody) do
    case Jason.decode(rawBody) do
      {:ok, body} -> {:ok, body["bitcoin"]["usd"]}
      error -> IO.inspect(error)
    end
  end
end
