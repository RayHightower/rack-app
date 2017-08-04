myApp = ->(env) do
    pp env
    # return values
end

 # or

class MyApp
  def call(env)
    pp env
    # return values
  end
end
