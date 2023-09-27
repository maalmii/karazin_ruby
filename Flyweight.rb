# Фабрика для керування Flyweight-об'єктами
class FlyweightFactory
  def initialize
    # Хеш для зберігання Flyweight-об'єктів. Ключ - ідентифікатор об'єкта, значення - сам об'єкт.
    @flyweights = {}
  end

  # Метод для отримання або створення Flyweight-об'єкта за ключем.
  def get_flyweight(key)
    if @flyweights[key].nil?
      # Якщо об'єкт за заданим ключем не існує, то створюємо новий і зберігаємо його в хеші.
      @flyweights[key] = ConcreteFlyweight.new(key)
    end
    # Повертаємо або існуючий, або новий Flyweight-об'єкт.
    @flyweights[key]
  end

  # Метод для отримання кількості створених Flyweight-об'єктів.
  def flyweights_count
    @flyweights.length
  end
end

# Конкретний Flyweight-об'єкт, який містить спільні дані
class ConcreteFlyweight
  def initialize(shared_data)
    # Конструктор приймає спільні дані, які будуть використовуватися багатьма об'єктами.
    @shared_data = shared_data
  end

  # Метод для виконання операції, яка використовує як спільні, так і унікальні дані.
  def operation(unique_data)
    puts "ConcreteFlyweight: Використовую спільний дані '#{@shared_data}' і унікальний дані '#{unique_data}'."
  end
end

# Клієнт, який використовує Flyweight-об'єкти
class Client
  def initialize(factory)
    # Клієнт отримує фабрику для створення Flyweight-об'єктів.
    @factory = factory
  end

  # Метод для використання Flyweight-об'єктів клієнтом.
  def run
    # Отримуємо або створюємо Flyweight-об'єкт з фабрики та викликаємо його метод operation.
    flyweight_1 = @factory.get_flyweight("A")
    flyweight_1.operation("X")

    # Аналогічно для іншого об'єкта.
    flyweight_2 = @factory.get_flyweight("B")
    flyweight_2.operation("Y")

    # Отримуємо об'єкт знову з фабрики, але цього разу це буде той самий об'єкт, що і flyweight_1.
    flyweight_3 = @factory.get_flyweight("A")
    flyweight_3.operation("Z")

    # Виводимо кількість створених Flyweight-об'єктів.
    puts "Кількість створених Flyweight-об'єктів: #{factory.flyweights_count}"
  end
end

# Використання шаблону Flyweight
factory = FlyweightFactory.new
client = Client.new(factory)
client.run
