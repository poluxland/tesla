class ReportePolicy < ApplicationPolicy
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
    user.admin?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.tecnico?
  end
end
