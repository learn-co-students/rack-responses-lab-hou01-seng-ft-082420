

class Application

    def call(env)

        resp = Rack::Response.new

        current_time = Time.now
        cutoff_time = Time.parse "12:00 pm"

        if current_time >= cutoff_time
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end

        resp.finish
    end
    require 'time'

end