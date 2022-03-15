defmodule LogLevel do

  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      level == 0 && legacy? == false -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 && legacy? == false -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    label = to_label(level, legacy?)
    cond do
      label == :fatal or label == :error -> :ops
      label == :unknown && legacy? == true -> :dev1
      label == :unknown && legacy? == false -> :dev2
      true -> :false
    end
  end
end
