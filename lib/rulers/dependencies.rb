class Object
  def self.const_missing(controller)
    require Ruler.to_underscore(controller.to_s)
    Object.const_get(controller)
  end
end
