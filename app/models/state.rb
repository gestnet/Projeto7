class State < ActiveRecord::Base

	has_many :dataworks, :dependent => :destroy


	def self.fetch(url, state_id)
		response=JSON.parse(RestClient.get(url))
		dataset = response["dataset"]["data"]
			dataset.each do |point|
			Datawork.create(date: point.first, value: point.last, state_id: state_id)
			end
	end		
end
