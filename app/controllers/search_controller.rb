class SearchController < ApplicationController
    def index
    end
    def update
      
    end
    def result
        @data = Property.where('property_type LIKE ?', '%'+params[:property_type].capitalize+'%')
        @data += Property.where('property_type LIKE ?', '%'+params[:property_type].downcase+'%')
        @data += Property.where(property_size: params[:property_size])
        @data += Property.where('property_location LIKE ?', '%'+params[:location].downcase+'%')
        @data += Property.where('property_location LIKE ?', '%'+params[:location].capitalize+'%')
        @data += Property.where('city LIKE ?', '%'+params[:city].capitalize+'%')
        @data += Property.where('city LIKE ?', '%'+params[:city].downcase+'%')
        @data += Property.where('type_of_lister LIKE ?', '%'+params[:type_of_lister].capitalize+'%')
        @data += Property.where('type_of_lister LIKE ?', '%'+params[:type_of_lister].downcase+'%')
        @data += Property.where('property_status LIKE ?', '%'+params[:property_status].capitalize+'%')
        @data += Property.where('property_status LIKE ?', '%'+params[:property_status].downcase+'%')
        @data.each do |index|
             puts index.property_location
         end
    end
end
