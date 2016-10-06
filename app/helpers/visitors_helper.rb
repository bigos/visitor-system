module VisitorsHelper
  def status_info(status)
    if status == 'expected'
      %q(<i class="fa fa-bug" style="color:blue"></i> ) + status
    elsif status == 'present' || status == 'overstayed'
      %q(<i class="fa fa-bug" style="color:green"></i> ) + status
    elsif status == 'departed'
      %q(<i class="fa fa-bug" style="color:red"></i> ) + status
    else
      %q(<i class="fa fa-bug" style="color:yellow"></i> ) + status
    end.html_safe
  end
end
