# SquareUp

Square API Client for Elixir

## Usage

```elixir
iex> client = %SquareUp.Client{...}
iex> SquareUp.V2.Payments.list(client)
{:ok, %{}}
```

## Configuring a hackney HTTP client connection pool

It is recommended to start a separate http connection pool for requests going to Square. Doing so requires changes in two locations:

```elixir
# lib/application.ex

def start(_) do
  children = [
    ...
    :hackney_pool.child_spec(:my_pool, [max_connections: 10, timeout: 5000]),
    ...
  ]
end

# Creating your SquareUp.Client struct:

%SquareUp.Client{
  ...
  hackney_opts: [pool: :my_pool],
  ...
}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `square_up` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:square_up, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/square_up](https://hexdocs.pm/square_up).
