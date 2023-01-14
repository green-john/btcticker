import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :btcticker, BtctickerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Agi21nSW4YczwE0QBtunzpdt7yO/Y0/YwI/7XEFuxeyDPY5x14MhNvR7NKO6PeJ0",
  server: false

# In test we don't send emails.
config :btcticker, Btcticker.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
