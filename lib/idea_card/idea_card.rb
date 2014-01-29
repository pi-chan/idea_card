module IdeaCard

  module ModuleMethods
    functions = %w(goal point change)
    current_file_path = File.dirname(__FILE__)
    functions.each do |m|
      eval <<-EOC
        def #{m}
          path = File.expand_path "./#{m}s", "#{current_file_path}"
          @#{m}s ||= load(path)
          @#{m}s.sample
        end
      EOC
    end

    def draw
      "#{goal}、#{point}、#{change}"
    end

    private

    def load(file)
      f = open(file)
      contents = f.read.split "\n"
      f.close
      contents
    end
    
  end
  
  extend ModuleMethods
end
