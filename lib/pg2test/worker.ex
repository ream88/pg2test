defmodule Pg2test.Worker do
  use GenServer

  @group :group

  def start_link([]) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def members() do
    GenServer.call(__MODULE__, :members)
  end

  # GenServer API

  def init(state) do
    IO.puts("Started Worker")

    :pg2.start()
    :pg2.create(@group)
    :pg2.join(@group, self())

    {:ok, state}
  end

  def handle_call(:members, _from, state) do
    {:reply, :pg2.get_members(@group), state}
  end
end
