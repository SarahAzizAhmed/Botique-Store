
module API
  module V
    class Items < Grape::API
      version 'v'
      format :json
 
      resource :items do
        # index endpoint to get all items 
        desc "Return list of all Items"
        get do
          Item.all
        end

        # Show endpoint to a specific Item
        desc "Return a specific item"
        get ':id' do
          Item.find_by_id(params[:id])
        end

        # Show endpoint to a specific Item
        desc "Return a specific item"
        get ':name' do
          Item.find_by_name(params[:name])
        end
      end
    end
  end
end