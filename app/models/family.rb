class Family < ActiveRecord::Base

  has_many :devices

  def name=(value)
    self[:name] = value
    temp = value.downcase
    temp.gsub!(" ", "-")
    self[:friendly_url] = temp
  end

end
