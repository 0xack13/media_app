defmodule AppMedia.Media do
  @derive {Phoenix.Param, key: :filename}
  defstruct [:filename]
end
