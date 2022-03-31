﻿#language: ru

@tree

Функционал: проверка добавления картинок в справочник номенклатура

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Как тестировщик я хочу
я хочу добавить картинки к номенклатуре
чтобы можно было посмотреть как выглядит товар

Сценарий: <описание сценария>
И В командном интерфейсе я выбираю 'Закупки' 'Товары'
Когда открылось окно 'Товары'
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Bosch1234 (Товар)'
И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
Тогда открылось окно 'Файлы'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Файл (создание)'
И в поле с именем 'Наименование' я ввожу текст 'изображение'
И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
Тогда открылось окно 'изображение (Файл)'
И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
И я жду закрытия окна 'изображение (Файл)' в течение 20 секунд
Тогда открылось окно 'Файлы'
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда элемент формы с именем "Картинка" стал равен 'Картинка'
И у элемента формы с именем "Картинка" текст редактирования стал равен 'e1cib/data/Справочник.ХранимыеФайлы.ДанныеФайла?ref=a567646c80ca3b6c11ecb02de8fb2787'

