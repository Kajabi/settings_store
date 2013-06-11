require 'spec_helper'

describe SettingsStore::SettingsHash do
  subject(:settings_hash) { SettingsStore::SettingsHash.new }

  it "allows retrieving an assigned value" do
    settings_hash.foo = "bar"
    expect(settings_hash.foo).to eq "bar"
    settings_hash.foo = "buzz"
    expect(settings_hash.foo).to eq "buzz"
  end

  it "raises NoSettingError when retrieving a value that wasn't set" do
    expect {
      settings_hash.missing
    }.to raise_error(SettingsStore::NoSettingError)
  end

  it "responds to methods that end with =" do
    expect(settings_hash).to respond_to('bar=')
  end

  it "does not respond to other methods if no setting is present" do
    expect(settings_hash).not_to respond_to('missing')
  end
end
