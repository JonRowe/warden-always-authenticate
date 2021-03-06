module Warden
  class AlwaysAuthenticate
    def initialize app
      @app = app
    end

    def call env
      env['warden'].authenticate!
      @app.call env
    end

  end
end
