heights = [160, 168, 180, 125, 193, 154, 167, 185, 145]
last_names = %w[Иванов Петров Сидоров Кличко Зубов Яковлев Васильев Романов]
index_h = heights.index(heights.max)
p 'Самый высокий рост ' + heights.max.to_s + ' см у студента ' + last_names[index_h].to_s
