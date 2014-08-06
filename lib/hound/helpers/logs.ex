defmodule Hound.Helpers.Logs do
  def get_logs(type) do
    {:ok, driver_info} = Hound.driver_info
    driver_info[:driver_type].Logs.get_logs(type)
  end
end
