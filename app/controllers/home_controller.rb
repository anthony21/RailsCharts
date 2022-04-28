class HomeController < ApplicationController
 def index
    @history = Account.activity(Current.account).limit(10)
 end
end