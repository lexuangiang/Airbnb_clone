module ApplicationHelper

  def avatar(user)
    if user.fbprofile
      "https://graph.facebook.com/#{user.uid}/picture?type=large"
    else
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&=150"
    end
  end
end
