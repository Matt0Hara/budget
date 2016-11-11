require "kemal"
require "big"

def fib(n)
  a = BigInt.new(1)
  b = BigInt.new(1)
  n.times do
    a += b
    a, b = b, a
  end
  a
end

get "/" do
  render "views/index.ecr"
end

Kemal.run
