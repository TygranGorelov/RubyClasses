# Построить три класса (базовый и 2 потомка), описывающих некоторых работников с почасовой оплатой (один из потомков)
# и фиксированной оплатой (второй потомок). Описать в базовом классе абстрактный метод для расчета среднемесячной
# заработной платы.
# Для «повременщиков» формула для расчета такова:
#
#               «среднемесячная заработная плата = 20.8 * 8 * почасовую ставку»,
#
# для работников с фиксированной оплатой
#
#               «среднемесячная заработная плата = фиксированной месячной оплате».
#
# a) Упорядочить всю последовательность работников по убыванию среднемесячного заработка. При совпадении
# зарплаты – упорядочивать данные по алфавиту по имени. Вывести идентификатор работника, имя и
# среднемесячный заработок для всех элементов списка.
# b) Вывести первые 5 имен работников из полученного в пункте а) списка.
# c) Вывести последние 3 идентификатора работников из полученного в пункте а) списка.
# d) Организовать запись и чтение коллекции в/из файл.
# e) Организовать обработку некорректного формата входного файла.

class Basic

  attr_reader :wage_per_hour, :employes

  def initialize
   @wage_per_hour = 10
  end

  def wage
    p wage_per_month = @wage_per_hour * 8 * 21
  end

  def employes
    @empoyes = %w[ Ivanov, Petrov, Sidorov, Klichko, Zubov, Yakovlev, Vasilev, Romanov, Kot, Cherniy, Glebov]
  end

end
