produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(list_of_products)
  selected_fruits = {}
  product = list_of_products.keys
  counter = 0

  loop do

    break if counter == list_of_products.size

    current_product = product[counter]
    current_product_type = list_of_products[current_product]

    if current_product_type == 'Fruit'
      selected_fruits[current_product] = current_product_type
    end

    counter += 1

  end

  selected_fruits
end

p select_fruit(produce)