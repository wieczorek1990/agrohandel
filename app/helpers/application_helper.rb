module ApplicationHelper
  def default_language_path(path)
    path.sub! '/en', '/'
    return path
  end
end
