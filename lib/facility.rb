class Facility
  attr_reader :name, :address, :phone, :services, :registerd_vehicles, :collected_fees
  
  def initialize(facilities_info)
    @name = facilities_info[:name]
    @address = facilities_info[:address]
    @phone = facilities_info[:phone]
    @services = []
    @registerd_vehicles = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end 

  def register_vehicle(vehicle)
    
    if @services.include?('Vehicle Registration')
      vehicle.registration_date = Date.today
      if vehicle.electric_vehicle?
       vehicle.plate_type = :ev
       @collected_fees += 200
      elsif vehicle.antique?
       vehicle.plate_type = :antique
       @collected_fees += 25
      else 
       vehicle.plate_type = :regular
       @collected_fees += 100
     end 
     @registerd_vehicles << vehicle  
    end
  end
end
