# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

#class MiniSinatra
#  class Route < Struct.new(:method, :path, :block)
#    def match?(env)
#      env["REQUEST_METHOD"] == method && env["PATH_INFO"] == path
#    end
#  end
#
#  def initialize
#    @routes = []
#  end
#
#  def add_route(method, path, &block)
#    @routes << Route.new(method, path, block)
#  end
#
#  def call(env)
#    if route = @routes.detect { |route| route.match?(env) }
#      body = route.block.call
#      [
#        200,
#        { 'Content-Type' => 'text/plain' },
#        [ body ]
#      ]
#    else 
#      [
#        404,
#        { 'Content-type' => 'text/plain' },
#        ["Not found"]
#      ]
#    end
#  end
#
#  def self.application
#    @application ||= MiniSinatra.new
#  end
#end
#
#def get(path, &block)
#  MiniSinatra.application.add_route("GET", path, &block)
#end
#
#get "/hello" do
#  "hello"
#end
#
#get "/goodbye" do
#  "goodbye"
#end
#run App.new
#app = MiniSinatra.new
#app.add_route "GET", "/hello" do
#  "hello"
#end
#app.add_route "GET", "/goodbye" do
#  "goodbye"
#end

#run MiniSinatra.application

#app = lambda do |env|
#  [
#    200,
#    { 'Content-Type' => 'text/plain' },
#    [ 'hello from lambda!' ]
#  ]
#end
#
#run app

#app = Proc.new do |env|
#    [
#      200,
#      { 'Content-Type' => 'text/plain' },
#      [ 'hello from proc' ]
#    ]
#end
#
#class Logger
#  def initialize(app)
#    @app = app
#  end
#
#  def call(env)
#    method = env["REQUEST_METHOD"]
#    path = env["PATH_INFO"]
#    puts "#{method} #{path}"
#    @app.call(env)
#  end
#end

#use Logger
#use Rack::CommonLogger
#use Rack::ShowExceptions
#run app
