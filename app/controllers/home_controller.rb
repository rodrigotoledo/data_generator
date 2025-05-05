class HomeController < ApplicationController
  def index
  end

  def generate_password_for_current_user
    respond_to do |format|
      format.turbo_stream
    end
  end

  def generate_data_for_every_session
    DataGeneratorService.generate_uuid_and_append_name
    head :no_content
  end
end
