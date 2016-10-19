class SensorsController < ApplicationController
  
  def report
    @sensors = Sensor.order(created_at: :desc)
  end
  
end
