# frozen_string_literal: true

require_relative "rulers/version"
require_relative "routing"

module Rulers
  class Application
    def call(env)
      klass, action = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(action)
      [200, {'Content-Type' => 'text/html'},
       [text]
      ]
    end
  end

  class Controller
    def initilize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
