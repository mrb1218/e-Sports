class PlayerPolicy < ApplicationPolicy

  def create?
    user.has_role? :coach or user.has_role? :admin
 end

 def new?
   user.has_role? :coach or user.has_role? :admin
 end

 def edit?
   user.has_role? :coach or user.has_role? :admin or user.has_role? :player
 end

 def destroy?
   user.has_role? :coach or user.has_role? :admin
 end
end
