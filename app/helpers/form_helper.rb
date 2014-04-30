module FormHelper
  def add_routes_to_location(location)
    if location.routes.empty?
      location.routes.build
    end
    location
  end
end