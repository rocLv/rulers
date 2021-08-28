module Rulers
  class Application
    def get_controller_and_action(env)
      _, controller, action, after =
        env["PATH_INFO"].split('/', 4)
      controller = controller.capitalize # posts => Posts
      controller += "Controller" # PostsController

      [ Object.const_get(controller), action ]
    end
  end
end
