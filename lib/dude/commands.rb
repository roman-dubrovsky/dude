require "dry/cli"
require_relative "./commands/version"
require_relative "./commands/tasks"
require_relative "./commands/move"
require_relative "./commands/checkout"
require_relative "./commands/start"
require_relative "./commands/track"
require_relative "./commands/stop"
require_relative "./commands/install"

module Dude
  module Commands
    extend Dry::CLI::Registry

    register "install", Dude::Commands::Install, aliases: ["install"]
    register "version", Dude::Commands::Version, aliases: ["v", "-v", "--version"]
    register "tasks", Dude::Commands::Tasks, aliases: ["t", "-t", "--tasks"]
    register "move", Dude::Commands::Move, aliases: ["m", "-m", "--move"]
    register "checkout", Dude::Commands::Checkout, aliases: ["co"]
    register "track", Dude::Commands::Track, aliases: ["tr"]
    register "stop", Dude::Commands::Stop
    register "start", Dude::Commands::Start, aliases: ["st"]
  end
end
