module AdminHelper

  def admin?
    @current_user == "woodring@iastate.edu"
  end
end
