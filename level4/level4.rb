require 'json'

# Search and output job offers matching search params
class SearchService
  attr_reader :offers, :title, :description, :work_type

  def initialize(dataset:, title:, description:, work_type:)
    json = File.read(dataset)
    @offers = JSON.parse(json, symbolize_names: true)
    @title = title.downcase
    @description = description.downcase
    @work_type = work_type.downcase
  end

  # Perform search in job offers
  def search
    @result = []
    offers.each do |offer|
      if offer[:JobTitle].downcase.include?(title) && offer[:WorkType].downcase == work_type && offer[:JobSummary].downcase.include?(description)
        @result << offer
      end
    end
    @result
  end

  # Export matching job offers into JSON file
  def call
    output = search.to_json
    IO.write('output.json', output)
  end
end

SearchService.new(dataset: 'job_offers.json', title: 'chaplain', description: 'lincoln', work_type: 'Excepted Service Permanent').call
