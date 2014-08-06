defmodule Hound.JsonDriver.Logs do
  import Hound.JsonDriver.Utils

  def get_logs(type) do
    session_id = Hound.current_session_id
    make_req(:post,
      "session/#{session_id}/log",
      [type: type]
    )
  end
end
