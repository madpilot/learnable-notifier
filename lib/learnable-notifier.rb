require "rubygems"
require "bundler/setup"
require "prowler"
require "feedzirra"
require "clamp"

class LearnableNotifier
  attr_accessor :rss_path, :api_key, :sent, :options

  def initialize(rss_path, api_key, options = {})
    self.rss_path = rss_path
    self.options = {
      :application => 'Learnable forum',
      :storage => File.join(ENV['HOME'], '.learnable-notifier')
    }.merge(options)
  
    Prowler.configure do |config|
      config.api_key = api_key
      config.application = self.options[:application]
    end

    self.sent = { self.rss_path => [] }
    if (File.exists?(self.options[:storage]) && yaml = YAML.load_file(self.options[:storage]))
      self.sent = yaml
    end
  end

  def find_next_message
    next_guid = nil
    feed = Feedzirra::Feed.fetch_and_parse("#{rss_path}?type=rss")
    feed.entries.each do |entry|
      unless self.sent[self.rss_path].include?(entry.entry_id)
        send_message("Message from Learnable", entry.title) 
        self.sent[self.rss_path].push(entry.entry_id)
      end
    end
    
    File.open(self.options[:storage], 'w') do |fh|
      YAML.dump(self.sent, fh)
    end
  end

  def send_message(title, message)
    Prowler.notify title, message
  end
end
