module Experience
  def content name, locator
    define_singleton_method name do
      platform.get_content(locator)
    end
  end

  def read
    yield(self)
  end

  private

  def platform
    @platform || Platform.default
  end
end

class Platform
  def self.register_default platform
    @default = platform
  end

  def self.default
    @default or fail 'No platform specified. To set a default, call Platform.register_default'
  end
end