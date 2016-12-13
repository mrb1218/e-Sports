class UserPolicy < ApplicationPolicy

 def destroy?
   user.has_role? :admin
 end

 def edit?
   user.has_role? :coach or user.has_role? :admin
 end

 def show?
   user.has_role? :admin
end
end
