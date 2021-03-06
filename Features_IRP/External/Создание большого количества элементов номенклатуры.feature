#language: ru

@tree

Функционал: создание большого количества элементов справочника номенклатуры в цикле

Как тестировщик  я хочу
создать большое количество элементов справочника номенклатура
чтобы проверить работу справочника

Контекст: 
	Дано  Я открыл новый сеанс TestClient или подключил уже существующий
	
Сценарий: создание элементов в цикле
		И Я запоминаю значение выражения '1' в переменную "Шаг"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$Шаг$ +1' в переменную "Шаг"
		И Я запоминаю значение выражения '"Номенклатура" + $Шаг$' +  в переменную "НаименованиеНоменклатуры"
		И Я запоминаю значение выражения '"e1cib/data/Catalog.Items?ref="+ СтрЗаменить(Новый УникальныйИдентификатор(), "-", "")' в переменную "ИДНоменклатуры"			
		И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                  | 'DeletionMark' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en'                 | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '$ИДНоменклатуры$' | 'False'        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | ''       | '58795'  | ''            | '$НаименованиеНоменклатуры$' | ''                 | ''               | ''               |          |          |          |          |         |