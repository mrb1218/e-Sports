class UserPolicy < ApplicationPolicy

  def create?
    user.has_role? :coach or user.has_role? :admin
 end

 def new?
   user.has_role? :coach or user.has_role? :admin
 end

 def destroy?
   user.has_role? :admin
 end

 def edit?
   user.has_role? :coach or user.has_role? :admin
 end

end
