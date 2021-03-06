#language: ru

@tree

Функционал: Тестирование отчета Остатки вариант основной

Как Тестировщик я хочу
проверить отчет Остатки 
чтобы он показывал корректные данные 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Тестирование отчета Остатки вариант основной
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	Тогда открылось окно 'Выбор варианта отчета'
	И в таблице "СписокНастроек" я перехожу к строке:
		| 'Представление' |
		| 'Основной'      |
	И в таблице "СписокНастроек" я выбираю текущую строку
	И пауза 10
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И пауза 10
	И в табличном документе "Результат" ячейка с адресом "R1C1" равна "Товар"