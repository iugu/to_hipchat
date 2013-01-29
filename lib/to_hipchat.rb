require "to_hipchat/version"
require 'hipchat'

module ToHipchat
  include Methadone::CLILogging

  def self.send_data(token, room, username = "To Hipchat", data)
    begin
      debug "Initializing HipChat client with token " + token
      client = HipChat::Client.new(token)

      debug "Sending data to room " + room + " as username " + username
      client[room].send(username, data)
    rescue HipChat::UnknownRoom
      debug "ERROR: UnknownRoom"
      error "Unknown Room"
    rescue HipChat::Unauthorized
      debug "ERROR: Unauthorized"
      error "Unauthorized"
    rescue HipChat::UnknownResponseCode
      debug "ERROR: UnknownResponseCode"
      error "Unknown Response Code"
    end
  end
end
