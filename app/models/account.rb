#frozen_string_literal: true

class Account < ApplicationRecord 
  include Usable
  include Searchable

  validates :name, presence: true
  
  scope :activity, lambda { |account|
    account
      .associated_audits
      .where.not(auditable_type: %w(User RecordTransaction))
      .order(created_at: :desc, id: :desc)
  }

  def current? 
    Current.account == self
  end

end