require 'hirb'

class PkgLookup::Runner
    class << self
        def start
            if ARGV[0].nil?
                puts "Usage #{$0} <term>"
                exit
            end
            results = PkgLookup::Client.search(ARGV[0])
            puts Hirb::Helpers::AutoTable.render(results, :fields => ['name', 'source', 'url'], :resize => false)
        end
    end
end
