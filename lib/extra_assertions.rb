module ExtraAssertions
  def assert_includes(collection, item, message = nil)
    assert_block (message || "#{collection.inspect} should include #{item.inspect}.") do 
      collection.include?(item)
    end
  end

  def assert_not_includes(collection, item, message = nil)
    assert_block (message || "#{collection.inspect} should not include #{item.inspect}.") do 
      !collection.include?(item)
    end
  end

  def assert_valid(record)
    assert_block (message || "#{record.class.name} is invalid: #{record.errors.full_messages.join("\n")}") do
      record.valid?
    end
  end

  def assert_invalid(record)
    assert_block (message || "#{record.class.name} should be invalid.") do
      !record.valid?
    end
  end
end
