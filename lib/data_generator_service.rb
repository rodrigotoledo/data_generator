class DataGeneratorService
  def self.generate_uuid_and_append_name
    Turbo::StreamsChannel.broadcast_update_to(:data_generator_service, target: 'uuid', plain: Faker::Internet.uuid)
    Turbo::StreamsChannel.broadcast_append_to(:data_generator_service, target: 'name', plain: Faker::Name.name_with_middle)
  end
end
