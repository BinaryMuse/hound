defmodule Hound.Helpers do
  @moduledoc false

  defmacro __using__([]) do
    quote do
      import Hound
      import Hound.Helpers.Cookie
      import Hound.Helpers.Dialog
      import Hound.Helpers.Element
      import Hound.Helpers.Navigation
      import Hound.Helpers.Orientation
      import Hound.Helpers.Page
      import Hound.Helpers.Screenshot
      import Hound.Helpers.ScriptExecution
      import Hound.Helpers.Session
      import Hound.Helpers.Window
      import Hound.Helpers.Logs
      import unquote(__MODULE__)
    end
  end


  defmacro hound_session do
    quote do
      setup do
        Hound.start_session
        parent = self
        on_exit fn->
          Hound.end_session(parent)
        end
        :ok
      end
    end
  end

end
