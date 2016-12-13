class UserPolicy < ApplicationPolicy

 def destroy?
   user.has_role? :admin
 end

 def edit?
   user.has_role? :coach or user.has_role? :admin or user.has_role? :player or user.has_role? :newuser
 end

 def show?
   user.has_role? :coach or user.has_role? :admin or user.has_role? :player or user.has_role? :newuser
end
end
