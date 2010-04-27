module Mongoid
  File.open(File.join(RAILS_ROOT, 'config/mongoid.yml'), 'r') do |f|
    @settings = YAML.load(ERB.new(f.read).result)[RAILS_ENV]
  end

  Mongoid.config do |config|
    name = @settings["database"]
    host = @settings["host"]
    config.master = Mongo::Connection.new(host, @settings["port"], :logger => Rails.logger).db(name)
  end
end

# Loading models with ensure_index causes a database connection which we'd
# rather defer so that the created connection isn't closed when delayed job
# forks.
Rails.configuration.eager_load_paths = []
