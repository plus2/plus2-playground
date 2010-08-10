require 'playground/routes'

module Playground
  class Engine < ::Rails::Engine
    #initializer "playground" do
    #end
  end

  mattr_accessor :listing_layout

  def configure(&blk)
    yield self
  end

  def gem_root
    @root ||= Pathname('../..').expand_path(__FILE__)
  end
end
