class FeaturesController < ApplicationController
    feature :super_admin

    before_action :set_user, except: :show

    def index;end
end
