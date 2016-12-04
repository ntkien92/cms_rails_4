module ApplicationHelper
  def active_menu controller_name, name
    controller_name == name ? 'active' : ''
  end

  def convert_date date
    date.strftime('%b %d, %Y')
  end
end
