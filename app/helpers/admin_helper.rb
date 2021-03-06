module AdminHelper
  def gravatar_url(email, size)
    gravatar = Digest::MD5::hexdigest(email).downcase
    url = "http://gravatar.com/avatar/#{gravatar}.png?s=#{size}"
  end

  def active_menu controller_name, name
    controller_name == name ? 'active' : ''
  end
end
