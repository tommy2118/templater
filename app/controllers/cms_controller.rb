class CmsController < ActionController::Metal
  include AbstractController::Rendering
  include AbstractController::Helpers
  include ActionView::Layouts
  append_view_path ::SqlTemplate::Resolver.instance
  helper CmsHelper

  def respond
    render template: params[:page]
  end
end
