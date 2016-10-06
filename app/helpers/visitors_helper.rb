module VisitorsHelper
  def status_info(status)
    if status != 'departed'
      %q(<i class="fa fa-bug" style="color:green"></i> ) + status
    else
      %q(<i class="fa fa-bug" style="color:yellow"></i> ) + status
    end.html_safe
  end
end
