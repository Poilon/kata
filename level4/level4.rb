require 'json'

class SearchService
	attr_accessor :dataset, :title, :description, :work_type
	def initialize(params)
		@dataset = params[:dataset]
		@title = params[:title]
		@description = params[:description]
		@work_type = params[:work_type]
	end

	def call
		res = []
		File.open(dataset) do |f|
			res = JSON.parse(f.read)
		end

		res.keep_if { |e| 
			e['WorkType'] == work_type || 
			e['JobTitle'].split(' ').include?(title) ||
			e['JobSummary'].split(' ').include?(description)
		}
		res
	end
end

p SearchService.new(dataset: 'job_offers.json', title: 'Laborer', description: 'Veterans', work_type: 'Federal').call

