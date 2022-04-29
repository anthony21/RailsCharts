#frozen_string_literal: true

class Current < ActiveSupport::CurrentAttributes
  attribute :user, :account, :request

  def user=(user)
    super
    self.account = user&.account
  end

  def ip_address
    request&.remote_ip
  end

  def u_agent
   request&.u_agent
  end
end