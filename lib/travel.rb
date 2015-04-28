class Travel
  define_singleton_method(:clear) do
    @@all_destinations = []
  end  

  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_destinations
  end

  define_method(:save) do
    @@all_destinations.push(self)
  end

end
