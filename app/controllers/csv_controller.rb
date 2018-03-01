class CsvController < ApplicationController
    def index
        puts Property.all
    end
    def upload
        if params[:file].blank?
            flash[:notice] = "Csv is missing"
            redirect_to csv_path
        else
            @ext =    File.extname(params[:file].path)  
            if @ext == ".csv"
                    Property.import(params[:file])
                    redirect_to csv_path
            else
                flash[:notice] = "Please Use the .csv file"
                redirect_to csv_path
            end
        end
    end

end
