defmodule AppMedia.PageView do
  use AppMedia.Web, :view

def filetype(filename) do
typeoffile = filename
  |> String.split(".")
  |> Enum.at(1)

cond do
  typeoffile == "mp3" -> "mpeg"
  typeoffile == "mp4" -> "mp4"
end
  end

end
