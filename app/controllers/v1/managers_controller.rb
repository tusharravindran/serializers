module V1
  class ManagersController < ApplicationController
    def index
      managers = Manager.all.includes(:employees)
      
      render json: {
        data: ActiveModelSerializers::SerializableResource.new(managers, each_serializer: ManagerSerializer),
        message: ['Manager list fetched successfully'],
        status: 200,
        type: 'Success'
      }
    end

    def show
      manager = Manager.find(params[:id])
      
      render json: {
        data: ActiveModelSerializers::SerializableResource.new(manager, serializer: ManagerSerializer),
        message: ['Manager profile fetched successfully'],
        status: 200,
        type: 'Success'
      }
    end
  end
end
