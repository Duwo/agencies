require 'net/https'
require 'uri'
require 'json'
require 'pry'

http = Net::HTTP.new('www.hittamaklare.se', 443)
http.use_ssl = true
headers = {
  'Authorization' => "Bearer #{ENV['API_KEY']}"
}

namespace :agents do
  desc 'Fetch 50 agents from api'
  task fetch50: :environment do
    path = '/api/v1/agents'
    response_body = http.get(path, headers).body
    agents = JSON.parse(response_body)
    agents[0..50].each do |agent|
      agent.delete('id')
      new_agent = Agent.new(agent)
      new_agent.save!
    end
  end

  desc 'Add agents to random agencies'
  task add_agents_to_agencies: :environment do
    Agent.all.each do |agent|
      agent.agency = Agency.all.sample
      agent.save!
    end
  end
end
