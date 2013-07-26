module PagesHelper
  def active?(path)
    if request.path_info =~ /^#{path}.*/
      "class=\"active\"".html_safe
    end
  end
end
