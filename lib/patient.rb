class Patient

  attr_reader :name, :appointment, :doctor
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
   Appointment.all.collect {|appointment| appointment.patient == self}.uniq
  end

  def doctors
    Appointment.all.map { |appointment| appointment.doctor}.uniq
  end
end
