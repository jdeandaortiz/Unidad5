User.create name: 'José', status: :active, kind: :salesman, email: 'salesman@teste.com', password: 123456
User.create name: 'Manuel', status: :active, kind: :salesman, email: 'salesman2@teste.com', password: 123456
User.create name: 'Marcos', status: :active, kind: :manager, email: 'manager@teste.com', password: 123456

Product.create name: 'Smartphone', description: 'Un smartphone nuevo ...', status: :active, price: 10
Product.create name: 'Tablet', description: 'Una tablet nueva ...', status: :active, price: 20


Discount.create name: 'Descuento carnaval', description: 'Aplicar este descuento en carnaval', value: '10', kind: :procent, status: :active
Discount.create name: 'Descuento carnaval dinero', description: 'Aplicar este descuento cuando sea posible', value: '10', kind: :money, status: :active

Client.create name: 'Paulo', company_name: 'Google', document: '1234', email: 'paulo@google.com', user: User.first
Client.create name: 'Julia', company_name: 'Google', document: 'abcd', email: 'julia@google.com', user: User.first
