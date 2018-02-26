module Common


  def Common.get_url route
    YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["urls"][route]
  end

  def Common.get_property section, name
    YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")[section][name]
  end

end