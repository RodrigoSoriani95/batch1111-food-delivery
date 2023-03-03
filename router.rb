class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    greeting
    while @running
      display_options
      action = gets.chomp.to_i
      print `clear`
      dispatch(action)
    end
    puts 'Bye!'
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 0 then stop!
    else
      puts 'Invalid option'
    end
  end

  def display_options
    puts '1 - List meals'
    puts '2 - Add a meal'
    puts '3 - List customers'
    puts '4 - Add a customer'
    puts '0 - Exit the app'
    puts ''
    puts 'What do you want to do?'
  end

  def greeting
    puts ''.center(40, '=')
    puts ' Welcome to Batch#1111 Food Delivery '.center(40, '=')
    puts ''.center(40, '=')
    puts ''
  end

  def stop!
    @running = false
  end
end
