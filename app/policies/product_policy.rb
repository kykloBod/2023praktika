class ProductPolicy < ApplicationPolicy
  attr_reader :uset, :product
  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.admin? || record.user == user
  end

  def update?
    user.admin? || record.user == user
  end

  def destroy?
    user.admin? || record.user == user
  end

  
  
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
