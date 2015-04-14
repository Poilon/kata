require 'minitest/autorun'
require_relative 'level4'

class SearchServiceTest < Minitest::Test
  def test_return_all_offers_with_exact_worktype
    json = File.read('job_offers.json')
    offers = JSON.parse(json, symbolize_names: true)
    matching_offers = []
    matching_offers << offers.first
    matching_offers << offers[5]
    matching_offers << offers[6]
    assert_equal matching_offers, SearchService.new(dataset: 'job_offers.json', title: '', description: '', work_type: 'Excepted Service Permanent').search
  end

  def test_return_all_offers_with_exact_worktype_downcased
    json = File.read('job_offers.json')
    offers = JSON.parse(json, symbolize_names: true)
    matching_offers = []
    matching_offers << offers.first
    matching_offers << offers[5]
    matching_offers << offers[6]
    assert_equal matching_offers, SearchService.new(dataset: 'job_offers.json', title: '', description: '', work_type: 'excepted service permanent').search
  end

  def test_return_all_offers_with_exact_worktype_upcased
    json = File.read('job_offers.json')
    offers = JSON.parse(json, symbolize_names: true)
    matching_offers = []
    matching_offers << offers.first
    matching_offers << offers[5]
    matching_offers << offers[6]
    assert_equal matching_offers, SearchService.new(dataset: 'job_offers.json', title: '', description: '', work_type: 'EXCEPTED SERVICE PERMANENT').search
  end

  def test_return_nothing_if_no_offer_match_params
    assert_equal [], SearchService.new(dataset: 'job_offers.json', title: 'Santa Klaus', description: 'Deliver presents to children', work_type: 'Temporary').search
  end

  def test_return_nothing_if_work_type_does_not_match_exactly
    assert_equal [], SearchService.new(dataset: 'job_offers.json', title: '', description: '', work_type: 'CDI').search
  end

  def test_return_all_offers_with_exact_worktype_and_matching_title
    json = File.read('job_offers.json')
    offers = JSON.parse(json, symbolize_names: true)
    matching_offer = offers[4]
    assert_equal [matching_offer], SearchService.new(dataset: 'job_offers.json', title: 'Nurse', description: '', work_type: 'Permanent').search
  end

  def test_return_offer_with_exact_worktype_and_matching_title_and_description
    json = File.read('job_offers.json')
    offers = JSON.parse(json, symbolize_names: true)
    matching_offer = offers[4]
    assert_equal [matching_offer], SearchService.new(dataset: 'job_offers.json', title: 'Nurse', description: 'Medical Home Port Team', work_type: 'Permanent').search
  end
end
