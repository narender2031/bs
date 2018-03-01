class Property < ApplicationRecord
    require 'csv'
    def self.import(file)
        puts file
        CSV.foreach(file.path, :headers => true, skip_blanks: true) do |row|
            begin
                puts  Property.create! row.to_h
            rescue Exception => error # Never do this!
                @error =  error.message
            end
            # InviteCsv.create! row.to_h
        end     
    end
end
