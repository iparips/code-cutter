Dir.glob('lib/*.rake').each { |r| load r}

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => [:spec]
