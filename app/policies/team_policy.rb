class TeamPolicy < ApplicationPolicy

  def create?
    user.has_role? :coach or user.has_role? :admin
 end
end
