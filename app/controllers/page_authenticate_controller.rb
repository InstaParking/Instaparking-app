class PageAuthenticateController < ApplicationController

    before_action :authenticate_user!

end