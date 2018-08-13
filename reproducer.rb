def assert(what)
  raise "Expected '#{what}' to be true" unless what
end

assert Item.search_for('location = Somewhere and organization = Something').count == 1
