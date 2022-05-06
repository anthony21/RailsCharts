class User < ApplicationRecord
  include Securable 
  include Roles
  include Accountable

  def current?
    self == Current.User
  end
end
