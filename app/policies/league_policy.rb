class LeaguePolicy < ApplicationPolicy

  def create?
    user.has_role? :admin
 end

 def new?
    user.has_role? :admin
 end

 def destroy?
   user.has_role? :admin
 end

 def edit?
   user.has_role? :admin
 end

end
