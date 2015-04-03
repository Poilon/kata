require 'json'
require 'pry'

class SearchService

  OUT = 'output.json'

  def initialize(opts)
    raise ArgumentError, "Missing mandatory argument dataset" unless opts[:dataset]

    # Query
    @title = opts[:title]
    @description = opts[:description]
    @work_type = opts[:work_type]

    # Job offers
    begin
      @job_offers = JSON.parse(File.read(opts[:dataset]))
    rescue => e
      raise "Error loading dataset #{opts[:dataset]}"
    end
  end

  def call
    File.write(OUT, results.to_json)
  end

  # Find matching offers
  def results
    @job_offers.select{|job_offer| matching?(job_offer)}.tap{|res| puts "#{res.count} results found"}
  end

  def matching?(job_offer)
    return false if @work_type && job_offer['WorkType'] != @work_type
    return false if @title && !(job_offer['JobTitle'] =~ /#{@title}/i)
    return false if @description && !(job_offer['JobSummary'] =~ /#{@description}/i)

    return true
  end

end

SearchService.new(dataset: 'job_offers.json', title: 'tio', work_type: 'Permanent', description: 'Federal').call
