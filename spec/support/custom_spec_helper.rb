Spec::Runner.configure do |config|
  config.before(:each) do
    Mongoid.database.collection_names.each {|c| Mongoid.database.drop_collection(c)}
  end
end
