students = {
    Ivanov: 160,
    Petrov: 193,
    Sidorov: 180,
    Klichko: 125,
    Zubov: 193,
    Yakovlev: 154,
    Vasilev: 167,
    Romanov: 185
}

max_high = students.values.max
highest_names = students.select { |_, value| value == max_high }.keys.join(', ')

p 'Самый высокий рост ' + max_high.to_s + ' см у студента ' + highest_names
