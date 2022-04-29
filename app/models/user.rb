class User < ApplicationRecord
  def current?
    self == Current.User
  end
end
