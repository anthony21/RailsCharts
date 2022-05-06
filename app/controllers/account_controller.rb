# frozen_string_literal: true

class AccountsController < ApplicationController
  include Searchable
  include Usable

  feature :account_management, only: :index

  before_action :set_account, except: :index
  before_action :redirect_unauthorized, unless: :authorized?, except: :index

  def index
  end

  def show; end

  def edit; end

  def update
    if @account.update(account_params)
      redirect_to @account, notice: I18n.t('accounts.updated', name: @account.name)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def history
  end

  def activity
  end

  def billing
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end

  def authorized?
    return true if Feature.enabled? :account_management
    return false if Current.account != @account

    action_name == 'activity' || Feature.enabled?(:account_admin)
  end

  def account_params
    params.require(:account).permit(:name)
  end
  ed
  