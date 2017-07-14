# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/product_collection'

path = "data"

product = ProductCollection.from_dir(path)
puts "----------------"
puts product.to_a[0]
puts "----------------"
puts product.sort_by_amount(0)













# book2 = Book.from_file("#{path}/book/0.txt")
# film2 = Film.from_file("#{path}/film/0.txt")
# puts book2
# puts film2

# begin
# prod = Product.from_file("#{path}/film/0.txt")
# rescue NotImplementedError => e
#   puts "\n prod = Product.from_file(\"#{path}/film/0.txt\") -> Ошибка: #{e.message}"
# end
