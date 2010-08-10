module ActionDispatch::Routing
  class Mapper
    def add_playground_routes
      match 'playground'        => 'playground#index'
      match 'playground/*other' => 'playground#index'

      root :to => 'playground#index'
    end
  end
end
