class CommandLine < Clamp::Command
  option [ "-l", "--lesson" ], "LESSON", "URL of the Learnable lesson you are monitoring"
  option [ "-k", "--api-key" ], "API_KEY", "Your Prowl API Key"

  def execute
    @notifier = LearnableNotifier.new(lesson, api_key)
    @notifier.find_next_message
  end
end
