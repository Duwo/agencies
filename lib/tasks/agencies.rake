agencies = [
  {
    "name": 'Notar'
  },
  {
    "name": 'Bjurfors'
  },
  {
    "name": 'Unik'
  },
  {
    "name": 'Svensk Fastighetförmedling'
  },
  {
    "name": 'Husman Hagberg'
  },
  {
    "name": 'Erik Olsson'
  },
  {
    "name": 'Skandia Mäklarna'
  },
  {
    "name": 'Länsförsäkringar Fastighetsförmedlig'
  },
  {
    "name": 'mäklarringen'
  }
]

namespace :agencies do
  desc 'Create agencires'
  task create_agencies: :environment do
    agencies.each do |agency|
      new_agency = Agency.new(agency)
      new_agency.save!
    end
  end
end
