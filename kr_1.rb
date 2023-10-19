class Book
  # Конструктор класу
  def initialize(title, author, publication_year)
    @title = title
    @author = author
    @publication_year = publication_year
  end

  # Метод для отримання назви книги
  def get_title
    return @title
  end

  # Метод для встановлення назви книги
  def set_title(new_title)
    @title = new_title
  end

  # Метод для отримання автора книги
  def get_author
    return @author
  end

  # Метод для встановлення автора книги
  def set_author(new_author)
    @author = new_author
  end

  # Метод для отримання року видання книги
  def get_publication_year
    return @publication_year
  end

  # Метод для встановлення року видання книги
  def set_publication_year(new_publication_year)
    @publication_year = new_publication_year
  end
end

# Приклад використання класу 
book_1 = Book.new("The Catcher in the Rye", "J.D. Salinger", 1951)

# Отримання і виведення інформації про книгу
puts "Title: #{book_1.get_title}"
puts "Author: #{book_1.get_author}"
puts "Publication Year: #{book_1.get_publication_year}"

# Зміна інформації про книгу
book_1.set_title("New Title")
book_1.set_author("New Author")
book_1.set_publication_year(2020)

# Printing updated information
puts "Updated Title: #{book_1.get_title}"
puts "Updated Author: #{book_1.get_author}"
puts "Updated Publication Year: #{book_1.get_publication_year}"
