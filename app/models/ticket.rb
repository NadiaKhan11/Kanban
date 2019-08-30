class Ticket < ActiveRecord::Base
    def self.all_in_columns
        all.group_by { |ticket| ticket.column }
    end
end