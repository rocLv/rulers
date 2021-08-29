class Object
  def self.const_missing(controller)
    require Rulers.to_underscore(controller.to_s)
    Object.const_get(controller)
  end
end
