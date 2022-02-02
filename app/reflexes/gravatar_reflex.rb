class GravatarReflex < ApplicationReflex
  def perform
    @email = element[:value]
    return unless %r{[^@]+@[^.]+\..+}.match?(@email)
    @email_md5 = Digest::MD5.hexdigest(@email.downcase.strip)
    @gravatar_image_url = "https://www.gravatar.com/avatar/#{@email_md5}"
    @remail = @email.reverse
  end

  def name
    @tot = element.dataset[:nu].to_i + element.dataset[:nus].to_i
  end
  
  def names
    @names = element[:value]
  end
  

end