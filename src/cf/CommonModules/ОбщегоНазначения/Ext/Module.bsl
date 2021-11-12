﻿#Область ПрограммныйИнтерфейс

Функция СсылкаСуществует(Ссылка) Экспорт
	
	СхемаЗапроса = Новый СхемаЗапроса;
	ЗапросВыбора = СхемаЗапроса.ПакетЗапросов.Добавить(Тип("ЗапросВыбораСхемыЗапроса"));
	Выбрать = ЗапросВыбора.Операторы[0];
	Выбрать.КоличествоПолучаемыхЗаписей = 1;
	Выбрать.ВыбираемыеПоля.Добавить("Истина");
	Выбрать.Источники.Добавить(Ссылка.Метаданные().ПолноеИмя());
	Выбрать.Отбор.Добавить("Ссылка = &Ссылка");
	
	Запрос = Новый Запрос;
	Запрос.Текст = СхемаЗапроса.ПолучитьТекстЗапроса();
	Запрос.УстановитьПараметр("Ссылка", Ссылка);
	
	Возврат НЕ Запрос.Выполнить().Пустой();

КонецФункции

#КонецОбласти
