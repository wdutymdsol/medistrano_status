require "medistrano_status/version"

module MedistranoStatus
  module Rack
    class AppStatus
      def initialize(app)
        @app = app
      end

      def call(env)
        if env['PATH_INFO'] == "/app_status"
          [200,
           {
               'Content-Type' => 'text/plain; charset=UTF-8',
               'Cache-Control' => 'no-cache'
           },
           ["OK"]
          ]
        else
          @app.call(env)
        end
      end
    end
  end
end
