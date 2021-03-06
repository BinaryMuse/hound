## Configuring Hound

To configure Hound, use the project's `config/config.exs` file or equivalent (v0.14.0 and above). Here are some examples:

```elixir
# Start with selenium driver (default)
config :hound, driver: "selenium"
```

```elixir
# Start with default driver at port 1234 and use firefox

config :hound, port: 1234, browser: "firefox"
```

```elixir
# Start Hound for PhantomJs
config :hound, driver: "phantomjs"
```

```elixir
# Start Hound for ChromeDriver (default port 9515 assumed)
config :hound, driver: "chrome_driver"
```

```elixir
# Start Hound for remote PhantomJs server at port 5555
config :hound, driver: "phantomjs", host: "http://example.com", port: 5555
```
