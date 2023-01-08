class ClientePolicy < ApplicationPolicy
  def index?
    user.cliente?
  end

  def new?
    user.cliente?
  end

  def create?
    user.cliente?
  end

  def edit?
    user.cliente?
  end

  def update?
    user.cliente?
  end

  def destroy?
    user.cliente?
  end
end
