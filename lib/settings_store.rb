require "settings_store/version"
require "active_support/ordered_options"

module SettingsStore
  NoSettingError = Class.new(NoMethodError)

  class SettingsHash < ActiveSupport::OrderedOptions
    def respond_to?(name)
      if name.to_s =~ /(.*)=$/
        super
      else
        self.include? name
      end
    end

    def method_missing(name, *args)
      if name.to_s =~ /(.*)=$/
        super
      elsif self.include? name
        self[name]
      else
        raise NoSettingError, "subsetting #{name} is not present; check spelling or set it"
      end
    end
  end
end
