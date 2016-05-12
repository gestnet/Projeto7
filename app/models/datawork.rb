class Datawork < ActiveRecord::Base
  belongs_to :state

  	default_scope { order('date ASC')}

  	def self.search_data(query)
  		where('extract(year from date) = ?', query)
  	end

  	def minimum(column_name, options = {})
  		calculate(:minimum, column_name, options)
  	end

  	def average(column_name, options = {})
  		calculate(:average, column_name, options)
  	end

  	def maximum(column_name, options = {})
  		calculate(:maximum, column_name, options)
  	end
end
