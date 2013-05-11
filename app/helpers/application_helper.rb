#encoding: utf-8
module ApplicationHelper
  def time_mid(time)
    time.strftime("%Y.%m.%d %I:%M%P")
  end
end
