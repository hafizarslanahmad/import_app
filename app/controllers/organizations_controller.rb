class OrganizationsController < ApplicationController

    def new
        @organization = Organization.new
    end

    def index
        @organizations = Organization.all
    end

    def show
      @organization = Organization.find(params[:id])
    end
    def create
      @organization = Organization.new(organization_params)
      if @organization.save
        redirect_to organizations_path, notice:"Ogranization created"
      else
        render :new
      end
    end

    private
    def organization_params
      params.require(:organization).permit(:name, :address, :head_quarter, :registration_id, :logo)
    end
   
end
