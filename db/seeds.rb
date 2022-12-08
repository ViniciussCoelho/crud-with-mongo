aa = Category.create(name: 'Tecnologia')
ab = Category.create(name: 'Bebidas')
ac = Category.create(name: 'Roupas')
ad = Category.create(name: 'Alimentos')

ba = Brand.create(name: 'Apple')
bb = Brand.create(name: 'Samsung')
bc = Brand.create(name: 'LG')
bd = Brand.create(name: 'Genérico')

ca = Supplier.create(name: 'Fornecedor 1', city: 'São Paulo', phone: '11 99999-9999')
cb = Supplier.create(name: 'Fornecedor 2', city: 'Rio de Janeiro', phone: '21 99999-9999')
cc = Supplier.create(name: 'Fornecedor 3', city: 'Belo Horizonte', phone: '31 99999-9999')
cd = Supplier.create(name: 'Fornecedor 4', city: 'Curitiba', phone: '41 99999-9999')

da = Product.create(name: 'iPhone 6', price: 2000, category: aa, brand: ba, quantity: 10, expiration_date: '2021-12-31')
db = Product.create(name: 'iPhone 6 Plus', price: 2500, category: aa, brand: ba, quantity: 10, expiration_date: '2022-9-25')
dc = Product.create(name: 'Maçã', price: 2, category: ad, brand: bd, quantity: 100, expiration_date: '2022-8-12')
dd = Product.create(name: 'Coca-Cola', price: 3, category: ab, brand: bd, quantity: 100, expiration_date: '2022-8-12')

Order.create(supplier_id: ca, product: da, quantity: 10, total: 2000, order_date: '2022-9-25')
Order.create(supplier_id: cb, product: db, quantity: 10, total: 2500, order_date: '2022-9-21')
Order.create(supplier_id: cc, product: dc, quantity: 100, total: 200, order_date: '2021-9-14')
Order.create(supplier_id: cd, product: dd, quantity: 100, total: 300, order_date: '2021-9-02')
