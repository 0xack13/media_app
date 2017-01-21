defmodule AppMedia.PageController do
  use AppMedia.Web, :controller
  alias AppMedia.Media

  def index(conn, _params) do
    render conn, "index.html", files: media_files
  end

  def show(conn, %{"filename" => filename}) do
    render conn, "show.html", filename: filename
  end

defp media_files do
    # where I store my files
    media_dir = "./priv/static/media"
    {:ok, files} = File.ls(media_dir)
    filetype = [".mp4", ".mp3"]

    Enum.filter(files, fn(file) -> 
      String.ends_with?(file, filetype)
    end)
    |> Enum.map(fn(file) -> 
      %{filename: file} # Map
    end)
end
end
