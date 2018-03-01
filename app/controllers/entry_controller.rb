class EntryController < ApplicationController
    def index
        @property = Property.new
    end
    def update
        Property.create!(property_params)
        redirect_to search_path
    end
    private
    def property_params
        params.require(:property).permit(:lister,:property_type,:price,:phone,:property_description,:property_location,:property_status,:type_of_lister,:city,:property_size)
    end
end
