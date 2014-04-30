module FormHelper
  def add_routes_to_location(location)
    if location.routes.empty?
      location.routes.build
    end
    location
  end

  def add_attempts_to_user(user)
    if user.attempts.empty?
      user.attempts.build
    end
    user
  end
end