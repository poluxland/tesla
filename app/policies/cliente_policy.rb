class ClientePolicy < ApplicationPolicy
  def index?
    user.tecnico?
  end

  def new?
    user.tecnico?
  end

  def create?
    user.tecnico?
  end

  def edit?
    user.tecnico?
  end

  def update?
    user.tecnico?
  end

  def destroy?
    user.tecnico?
  end
end
