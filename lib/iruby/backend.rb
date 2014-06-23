module IRuby
  class PlainBackend
    def initialize
      Bond.start(debug: true)
    end

    def eval(code)
      TOPLEVEL_BINDING.eval(code)
    end

    def complete(line, text)
      Bond.agent.call(line, line)
    end
  end

end
