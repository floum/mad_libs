module MadLibs
  # the story class
  class Story
    attr_reader :keys
    def initialize(string)
      @story = string
      @keys = string.scan(/\(\((\w+ \w+)\)\)/).flatten
    end

    def []=(placeholder, value)
      @story.gsub!(/\(\(#{placeholder}\)\)/, value)
    end

    def render
      @story
    end
  end
end
