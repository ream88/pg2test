# Pg2test

## 1. Terminal

```sh
iex --name foo@127.0.0.1 --cookie secret -S mix
```

```elixir
Pg2test.Worker.members() |> Enum.count # => 1
```

## 2. Terminal

```sh
iex --name bar@127.0.0.1 --cookie secret -S mix
```

```elixir
Node.ping(:"foo@127.0.0.1")
Pg2test.Worker.members() |> Enum.count # => 2
```
