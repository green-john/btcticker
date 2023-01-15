# Btcticker

This is a simple ticker written in Elixir using Phoenix LiveView.

The LiveView ticks every 30 seconds and uses Coingecko's API to fetch
the BTC price.

There's a lot of things that could be improved here, this is a very
very rough proof of concept.

## Running

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Tailwind `mix tailwind.install`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
