/*Algorithms
Алгоритм поиска
- Линейный поиск
- Бинарный поиск

Алгоритм сортировки
- сортировка пузырьком
- сортировка выбором
- быстрая сортировка

Алгоритмы для работы с графами
- BFS (breadth first search)
- DFS (depth first search)
- алгоритм Дейкстры

Два указателя

Жадные алгоритмы
- Алгоритм Хаффмана
- Алгоритм Краскала

Быстрое возведение в степень C#
- Рекурсивная реализация быстрого возведения в степень
- Итерационная реализация быстрого возведения в степень
*/


INSERT INTO Topics([Name], HasChildren, ParentId, [Order])
VALUES(N'Алгоритмҳои ҷустуҷӯ', 1, NULL, 1)
	 ,(N'Алгоритмҳои ҷудокунӣ', 1, NULL, 2)
	 ,(N'Алгоритҳо барои кор бо графҳо', 1, NULL, 3)
	 ,(N'Ду нишондод', 0, NULL, 4)
	 ,(N'Жадные алгоритмы', 1, NULL, 5)
	 ,(N'Экспонентатсияи зуд', 1, NULL, 6)

GO

INSERT INTO Topics([Name], HasChildren, ParentId, [Order])
VALUES(N'Ҷустуҷӯи хатӣ', 0, 1, 1) --7
	 ,(N'Ҷустуҷӯи дуӣ', 0, 1, 2) --8
	 ,(N'Ҷудокунии ҳубобӣ', 0, 2, 1) --9
	 ,(N'Ҷудокунӣ аз рӯи интихоб', 0, 2, 2) --10
	 ,(N'Ҷудокунии зуд', 0, 2, 3)
	 ,(N'BFS (breadth first search)', 0, 3, 1) --12
	 ,(N'DFS (depth first search)', 0, 3, 2)
	 ,(N'Алгоритми Дейкстр', 0, 3, 3) --14
	 ,(N'Алгоритми Хаффман', 0, 5, 1)
	 ,(N'Алгоритми Краскал', 0, 5, 2) --16
	 ,(N'Рекурсивная реализация быстрого возведения в степень', 0, 6, 1)
	 ,(N'Итерационная реализация быстрого возведения в степень', 0, 6, 2) --18

GO

INSERT INTO Content(TopicId, ContentTypeId, [Data], Params, [Order])
VALUES(7, 2, N'Ин мақола мефаҳмонад, ки чӣ гуна алгоритми ҷустуҷӯи хатиро амалӣ кардан мумкин аст. Барои фаҳмидани он ки дар мақола чӣ рӯй дода истодааст шумо бояд дар бораи массивҳо ва давраҳо донед. Ин алгоритм хеле содда аст ва аксар вақт дар амал истифода мешавад.', NULL, 1)
	 ,(7, 2, N'Барои иҷрои ҷустуҷӯи хаттӣ, шумо бояд ҳамаи унсурҳои маҷмӯаро тафтиш кунед, агар элемент пайдо шавад, пас дар ин ҳолат одатан индекси элемент е true баргардонида мешавад.', NULL, 2)
	 ,(7, 2, N'Фарз мекунем, ки мо маҷмӯи ададҳои бутун дорем. Бояд индекси рақами додашударо пайдо кард, агар унсури додашуда дар маҷмӯа набошад, пас -1-ро баргардонидан лозим аст.', NULL, 3)
	 ,(7, 2, N'Мисол:', NULL, 4)

GO

INSERT INTO CodeLists(asd) VALUES(NULL), (NULL), (NULL), (NULL), (NULL), (NULL), (NULL), (NULL);
SELECT * FROM CodeLists;

GO

SELECT * FROM ProgramingLanguages

GO

INSERT INTO Content(TopicId, ContentTypeId, [Data], Params, [Order], CodeListId)
VALUES(7, 6, N'', NULL, 6, 1)
	 ,(7, 2, N'Дар ин мисол, мо дар тамоми маҷмӯа мегузарем ва агар шумораи ҷустуҷӯшуда пайдо шавад, мо индекси онро бармегардонем, агар чунин унсур вуҷуд надошта бошад, пас -1-ро бармегардонем.', NULL,7, NULL)
	 ,(7, 2, N'Биеед бо намуди дигари маълумот бубинем. Фарз мекунем, ки мо маҷмӯи номҳо дорем (навъи сатр). Агар элемент дар маҷмӯа бошад, бояд true – ро баргардонед, вагарна false.', NULL, 8, NULL)
	 ,(7, 6, N'', NULL, 9, 2)
	 ,(7, 2, N'Ин рамз аз рамзи қаблӣ фарқ намекунад, дар ин ҷо танҳо арзиши баргардонидашуда ноумед мешавад.', NULL, 10, NULL)
	 ,(7, 7, N'Бояд қайд кард, ки мураккабии муваққатии ин алгоритми O(n).', NULL, 11, NULL)
	 
	 ,(15, 2, N'Алгоритми Хаффман (Huffman Algorithm) алгоритми тамаъҷӯест, ки барои сохтани рамзи префиксии оптималӣ истифода мешавад, ки аксар вақт дар фишурдани маълумот истифода мешавад. Биеед бифаҳмем, ки ин алгоритм чӣ гуна кор мекунад.', NULL, 1, NULL)
	 ,(15, 1, N'Қадамҳои асосии алгоритми Хаффман', NULL, 2, NULL)
	 ,(15, 2, N'1. Ҳисоб кардани басомади аломатҳо:', NULL, 3, NULL)
	 ,(15, 5, N'Пеш аз ҳама, басомади пайдоиши ҳар як аломат дар паем (е файл) муайян карда мешавад, ки барои он рамзи фишурда сохта мешавад.', NULL, 4, NULL)
	 ,(15, 2, N'2. Сохтани дарахти Хаффман:', NULL, 5, NULL)
	 ,(15, 5, N'Дарахти бинарӣ сохта мешавад, ки дар он ҳар як барг рамз аст ва гиреҳҳои дохилӣ ҷамъи басомади наслҳои худ мебошанд;'+char(10)+N'Дар ҳар қадам алгоритм ду гиреҳро бо басомади камтарин муттаҳид мекунад ва гиреҳи навро бо басомади умумӣ эҷод мекунад.', NULL, 6, NULL)
	 ,(15, 2, N'3. Таъини рамзҳо:', NULL, 7, NULL)
	 ,(15, 5, N'Рамзи префиксӣ (пайдарпаии битӣ) барои ҳар як рамз аз рӯи дарахт аз реша ба баргҳо сохта мешавад. Дар зери дарахти чап "0" ва дар тарафи рост "1" нишон дода шудааст;'+char(10)+N'Ба шарофати усули чашмгуруснагии сохтани дарахт, рамзҳои дарозии тағйиребанда аксар вақт истифода мешаванд. Аксар вақт рамзҳои кӯтоҳтар ба рамзҳои бештар таъин карда мешаванд.', NULL, 8, NULL)
	 ,(15, 2, N'4. Фишурдани маълумот:', NULL, 9, NULL)
	 ,(15, 5, N'Паем (е файл) бо версияи фишурда иваз карда мешавад, ки дар он ҳар як рамз бо рамзи префиксии мувофиқ иваз карда мешавад;'+char(10)+N'Ин ба шумо имкон медиҳад, ки маълумотро бо истифода аз битҳои камтар пешниҳод кунед, агар рамзҳои зуд-зуд рамзҳои кӯтоҳтар дошта бошанд.', NULL, 10, NULL)
	 ,(15, 6, N'', NULL, 11, 3)
	 ,(15, 2, N'Алгоритми Хаффман имкон медиҳад, ки маълумотро дар асоси басомади рамзҳо дар паем самаранок фишурда шавад. Он воситаи калидӣ дар фишурдани маълумот мебошад ва дар технологияҳои фишурдани файл, бойгонӣ, протоколҳои шабакавӣ ва дигар соҳаҳо васеъ истифода мешавад.', NULL, 12, NULL)
	 
	 ,(8, 2, N'', NULL, 1, NULL)
	 ,(8, 2, N'1. Барои оғоз, маълумот бояд аз рӯи афзоиш (е камшавӣ) фармоиш дода шавад.', NULL, 2, NULL)
	 ,(8, 2, N'2. Индекси ибтидоии left-ро ба сифр ва индекси ниҳоии right-ро ба дарозии массиви минус як муқаррар кунед.', NULL, 3, NULL)
	 ,(8, 2, N'3. Дар ҳоле ки left аз right хурдтар е баробар аст, қадамҳои зеринро иҷро мекунем:', NULL, 4, NULL)
	 ,(8, 5, N'Миенаи массивро ҳисоб мекунем: mid = (left + right) / / 2;'+char(10)+N'Агар арзиш дар мавқеи mid ба арзиши дилхоҳ баробар бошад, мо mid-ро бармегардонем;'+char(10)+N'Агар арзиши мавқеи mid аз он чизе, ки мо меҷӯем, зиедтар бошад, мо right - ро дар mid-1 навсозӣ мекунем;'+char(10)+N'Агар арзиши мавқеи mid аз он чизе, ки мо меҷӯем, камтар бошад, мо left-ро дар mid + 1 навсозӣ мекунем.', NULL, 5, NULL)
	 ,(8, 2, N'4. Агар арзиши ҷустуҷӯшуда ефт нашавад, мо -1-ро бармегардонем.', NULL, 6, NULL)
	 ,(8, 2, N'Намунаи татбиқи алгоритми ҷустуҷӯи дуӣ дар Python:', NULL, 7, NULL)
	 ,(8, 6, N'', NULL, 8, 4)
	 
	 ,(9, 2, N'Ҷобаҷогузории ҳубобӣ яке аз алгоритмҳои машҳури ҷобаҷогузорӣ мебошад. Дар ин ҷо шумо бояд арзишҳои унсурҳои ҳамсояро пай дар пай муқоиса кунед ва рақамҳоро бо ҷойҳо иваз кунед, агар пештара аз охирин калонтар бошад. Ҳамин тариқ, унсурҳои дорои арзишҳои калон дар охири рӯйхат ва бо арзишҳои хурдтар дар аввал боқӣ мемонанд.', NULL, 1, NULL)
	 ,(9, 4, N'https://yastatic.net/s3/education-portal/media/1_49e0bb0f63_63adb81133.gif', NULL, 2, NULL)
	 ,(9, 2, N'Ин алгоритм омӯзишӣ ҳисобида мешавад ва аз сабаби самаранокии паст қариб дар амал татбиқ карда намешавад: он оҳиста дар санҷишҳое кор мекунад, ки дар онҳо унсурҳои хурд (онҳоро черепахами меноманд) дар охири массив истодаанд. Аммо, бисер усулҳои дигар ба он асос ефтаанд, ба монанди ҷобаҷогузории ларзиш ва ҷобаҷогузории шона.', NULL, 3, NULL)
	 ,(9, 6, N'', NULL, 4, 5)
	 ,(9, 7, N'Бояд қайд кард, ки мураккабии муваққатии ин алгоритми O(n2).', NULL, 5, NULL)
	 
	 ,(10, 2, N'Аввалан, шумо бояд зергурӯҳи массивро баррасӣ кунед ва дар он ҳадди аксар (е ҳадди аққал) пайдо кунед. Сипас арзиши интихобшуда бо арзиши унсури якуми ҷудонашуда иваз карда мешавад. Ин қадам бояд то ба охир расидани зермассивҳои ҷудонашуда дар массив такрор карда шавад.', NULL, 1, NULL)
	 ,(10, 4, N'https://yastatic.net/s3/education-portal/media/184_9_b67b9a57f4_deb9de7372.gif', NULL, 2, NULL)
	 ,(10, 6, N'', NULL, 3, 6)
	 ,(10, 7, N'мураккабии муваққатии ин алгоритми O(n2).', NULL, 4, NULL)
	 
	 ,(11, 2, N'Ин алгоритм аз се марҳила иборат аст. Аввалан, шумо бояд як унсурро аз массив интихоб кунед-онро одатан дастгирӣ меноманд. Сипас унсурҳои дигари массивро тавре тақсим мекунанд, ки унсурҳои камтар аз унсурҳои такягоҳ пеш аз он ва калон е баробар пас аз он бошанд. Ва минбаъд ду қадами аввалро ба зермассивҳои рост ва чапи арзиши такягоҳ рекурсивӣ истифода мебаранд.', NULL, 1, NULL)
	 ,(11, 4, N'https://yastatic.net/s3/education-portal/media/184_11_3c7583c6cd_59878a71a8.gif', NULL, 2, NULL)
	 ,(11, 2, N'Ҷамъбасти зудро соли 1960 барои тарҷумаи мошинӣ ихтироъ карданд: он вақт луғатҳо дар лентаҳои магнитӣ нигоҳ дошта мешуданд ва ҷамъбасти калимаҳои матни коркардшуда имкон медод, ки тарҷумаҳоро дар як пешбурди лента бидуни бозгашт ба даст оранд.', NULL, 3, NULL)
	 ,(11, 6, N'', NULL, 4, 7)
	 ,(11, 7, N'мураккабии муваққатии ин алгоритми O(n2).', NULL, 5, NULL)

	 ,(12, 2, N'BFS, ё Breadth First Search алгоритми канори граф дар паҳнои. Граф ин сохтори "қуллаҳо" ва "канорҳо" мебошад, ки қуллаҳоро бо ҳам мепайвандад. Дар канори он аз як қулла ба қуллаи дигар ҳаракат кардан мумкин аст ВА BFS ин корро сатҳӣ мекунад: аввал аз тамоми қуллаҳои наздиктарин аз нуқтаи ибтидоӣ мегузарад, сипас чуқуртар поен меравад.', NULL, 1, NULL)
	 ,(12, 2, N'Чунин ба назар мерасад: алгоритм дар қуллаи пешакӣ интихобшуда оғоз меебад ва аввал "ташриф меорад" ва ҳамаи ҳамсояҳои ин қулларо қайд мекунад. Сипас он ба ҳамсояҳои қуллаҳои ташриф овардашуда мегузарад, сипас минбаъд бо ҳамон принсип. Аз сабаби хусусияти паҳншавии ба мавҷ монанд, алгоритмро мавҷӣ низ меноманд. BFS яке аз ду алгоритми маъмули гузариш аст. Дуюм DFS ном дорад ва ба чуқурӣ гузаштанро дар назар дорад: аввал алгоритм аз канори граф ба чуқурӣ мегузарад.', NULL, 2, NULL)
	 ,(12, 1, N'BFS барои чӣ лозим', NULL, 3, NULL)
	 ,(12, 5, N'Барои ҳалли масъалаҳои ҷустуҷӯи роҳи оптималӣ. Вазифаи классикӣ ҷустуҷӯи автоматикунонидашудаи баромадан аз лабиринт ҳисобида мешавад.'+char(10)+N'Барои ҳалли масъалаҳои бевосита бо назарияи графҳо алоқаманд, масалан барои ҷустуҷӯи ҷузъи пайвастшавӣ. Ин масъалаҳо дар навбати Худ дар илми Маълумот, назарияи шабакаҳо ва электроника ҳал карда мешаванд.'+char(10)+N'Барои масъалаҳои зеҳни сунъӣ, ки бо ҷустуҷӯи ҳалли камтарин ҳаракатҳо алоқаманданд. Дар ин ҳолат ҳолати "мошини оқил" ҳамчун қуллаҳо ва гузаришҳо байни онҳо ҳамчун канораҳо ифода карда мешаванд.'+char(10)+N'Барои оптимизатсияи хотира ҳангоми гузаштан аз граф дар баъзе ҳолатҳо, масалан барои баъзе сохторҳои мушаххас.'+char(10)+N'Барои кор бо иттилоот дар сохторҳои муайяни маълумот, ба монанди дарахтон. Онҳоро низ бо алгоритми BFS убур кардан мумкин аст, зеро онҳо зергурӯҳи графҳо мебошанд.', NULL, 4, NULL)
	 ,(12, 1, N'Хусусиятҳои BFS', NULL, 5, NULL)
	 ,(12, 5, N'Шумораи доимии амалҳо барои ҳар як канор е қулла. Ин ҳангоми ҳисоб кардани мураккабии алгоритм ҳангоми интихоби усули оптималии ҳалли ин е он масъала муҳим аст.'+char(10)+N'Набудани мушкилоти "сикли беохир": алгоритм бо сабаби хусусиятҳои корӣ дар ягон шароит ба он дохил намешавад.'+char(10)+N'Дақиқии баланд ва меъмории боэътимод, ки ба шумо имкон медиҳад, ки ба ин алгоритм барои ҳалли масъалаҳои гуногун такя кунед.'+char(10)+N'Қобилияти кор кардан бо графҳои нигаронидашуда ва ғайримутамарказ. Дар бораи он, ки онҳо аз ҳам фарқ мекунанд, дар мақола дар бораи графикаи нигаронидашуда хондан мумкин аст.'+char(10)+N'Пуррагии алгоритм он ҳалли худро меебад, яъне роҳи кӯтоҳтаринро пайдо мекунад ва дар ҳар графаи ниҳоӣ ба анҷом мерасад. Агар граф беохир бошад, ҳалли он танҳо дар сурате пайдо мешавад, ки агар ягон роҳи он ниҳоӣ бошад.'+char(10)+N'Имконияти пайдо кардани роҳи кӯтоҳтарин дар граф, агар ҳамаи канораҳо дарозии якхела дошта бошанд. Агар дарозии қабурғаҳо гуногун бошанд, BFS роҳи камтарини қабурғаҳоро пайдо мекунад, аммо он ҳатман кӯтоҳтарин нахоҳад буд. Барои ҷустуҷӯи роҳи кӯтоҳтарин дар ин ҳолат алгоритми Дейкстра беҳтар хоҳад буд.', NULL, 6, NULL)
	 ,(12, 1, N'Алгоритми BFS чӣ гуна кор мекунад', NULL, 7, NULL)
	 ,(12, 2, N'Алгоритм оддӣ ва беихтиерона аст. Он аз болои қуллаҳои граф мегузарад, то он даме ки қуллаҳои ташриф наоварда боқӣ монанд ва роҳи кӯтоҳтаринро то қуллаи мақсаднок ҳисоб мекунад. Барои ба таври равшантар нишон додани кори он, алгоритмро зина ба зина муаррифӣ мекунем.', NULL, 8, NULL)
	 ,(12, 2, N'Оғози кор. Шумо метавонед ҳар як қулларо ҳамчун қуллаи ибтидоӣ интихоб кунед. Дар лаҳзаи оғози кори алгоритм, ҳамаи қуллаҳо ҳамчун ташриф наоварда қайд карда шудаанд онҳоро сафед меноманд. Аввалин чизе, ки алгоритм мекунад, ин аст, ки қуллаи ибтидоиро ҳамчун ташриф овардашуда қайд мекунад (инчунин истилоҳоти кушода е хокистарӣ истифода мешаванд). Агар он мақсаднок бошад, ин алгоритмро ба анҷом мерасонад. Аммо аксар вақт ин тавр нест.', NULL, 9, NULL)
	 ,(12, 2, N'Ҷустуҷӯи ҳамсояҳо. Алгоритм месанҷад, ки кадом ҳамсояҳо дар қуллаи ибтидоӣ ҳастанд. Онҳо ба "навбати амалҳо" бо тартиби алгоритме, ки онҳоро пайдо кардааст, илова карда мешаванд ва инчунин ҳамчун "сабз"қайд карда мешаванд. Ин то он даме идома меебад, ки дар қуллаи ибтидоӣ ҳамсояҳои "сафед" боқӣ монанд.', NULL, 10, NULL)
	 ,(12, 2, N'Гузариш ба қуллаи навбатӣ. Вақте ки алгоритм аз тамоми ҳамсояҳои қуллаи ибтидоӣ мегузарад, он онро пурра аз байн мебарад. Чунин қуллаҳоро "сиеҳ" низ меноманд: алгоритм ба онҳо барнамегардад. Сипас он ба яке аз қуллаҳои "хокистарӣ" — и ҳамсояҳои ибтидоӣ мегузарад. Алгоритм қуллаи аввалро дар навбат интихоб мекунад. Сипас амалҳо такрор мешаванд:" ҳамсояҳо "- и қулла, ба ғайр аз" сиеҳ", ба навбат ворид карда мешаванд.', NULL, 12, NULL)
	 ,(12, 2, N'Вақте ки ин қулла низ аз он мегузарад, гузариш бо ҳамон принсип такрор мешавад — қуллаи аввал дар навбат. Дар ин ҳолат, он ҳамсояи дуюми қуллаи ибтидоӣ хоҳад буд-мо дар хотир дорем, ки онҳо аввал ба навбат илова карда шуданд. Ва танҳо вақте ки ҳамсояҳои қуллаи ибтидоӣ дар навбат ба охир мерасанд, алгоритм аз рӯи "сатҳи" қуллаҳои навбатӣ мегузарад. Ҳамин тавр, ба паҳноии он роҳ дода мешавад.', NULL, 13, NULL)
	 ,(12, 2, N'Охири алгоритм. Агар навбат холӣ бошад, ин маънои онро дорад, ки қуллаҳои "сафед" ва "сафед" дигар боқӣ намондаанд. Алгоритм ба охир мерасад. Агар дар ин ҳолат қуллаи мақсаднок ба даст наояд, ин маънои онро дорад, ки ба он аз нуқтаи ибтидоӣ дастрасӣ вуҷуд надорад.', NULL, 14, NULL)
	 ,(12, 2, N'Агар қуллаи мақсаднок пеш аз он ки алгоритм аз тамоми граф гузарад, ба даст оварда шавад, ин метавонад маънои онро дошта бошад, ки он ба анҷом мерасад. Алгоритм қатъ мешавад, зеро вазифа иҷро мешавад: роҳи кӯтоҳтарин ба болои ҳадаф пайдо мешавад.', NULL, 15, NULL)
	 ,(12, 2, N'', NULL, 16, 8)
	 
GO

INSERT INTO CodeInLang(CodeListId, LanguageId, Code)
VALUES(1, 1, N'def search(arr, target):'+char(10)+N'    for i in range(0, len(arr)):'+char(10)+'        if item== target:'+char(10)+'            return i'+char(10)+'    return -1'+char(10)+''+char(10)+N'# Пример использования'+char(10)+'arr = [1, 3, 5, 7, 9, 11, 13]'+char(10)+'target = 7'+char(10)+'result = search(arr, target)'+char(10)+'if result != -1:'+char(10)+N'    print(f"Элемент найден в позиции {result}.")'+char(10)+'else:'+char(10)+N'    print("Элемент не найден.")')
,(1, 2, '#include <iostream>'+char(10)+N'using namespace std;'+char(10)+N'int main() {'+char(10)+N'    int arr[7] = { 1, 3, 5, 7, 9, 11, 13 };'+char(10)+N'    int target = 7, result = -1;'+char(10)+N'    for(int i=0; i < 7; i++) {'+char(10)+N'        if(arr[i] == target) {'+char(10)+N'            result = i;'+char(10)+N'            cout << "Элемент найден в позиции " << i << ".";'+char(10)+N'            break;'+char(10)+N'        }'+char(10)+N'    }'+char(10)+N''+char(10)+N'    if(result != -1)'+char(10)+N'        cout << "Элемент найден в позиции " << i << ".";'+char(10)+N'    else'+char(10)+N'        cout << "Элемент не найден.";'+char(10)+N'}')

,(2, 1, N'def search(arr, target):'+char(10)+'    for item in arr:'+char(10)+'        if item == target:'+char(10)+'            return true'+char(10)+'    return false'+char(10)+''+char(10)+N'# Пример использования'+char(10)+'arr = ["Alex", "Bob", "Martin", "Sven"]'+char(10)+'target = "Sven"'+char(10)+'result = search(arr, target)'+char(10)+'if result:'+char(10)+N'    print(f"Элемент найден.")'+char(10)+'else:'+char(10)+N'    print("Элемент не найден.")')
,(2, 2, N'#include <iostream>'+char(10)+N'#include <vector>'+char(10)+N'#include <string>'+char(10)+N''+char(10)+N'bool search(const std::vector<std::string>& arr, const std::string& target) {'+char(10)+N'    for (const auto& item : arr) {'+char(10)+N'        if (item == target) {'+char(10)+N'            return true;'+char(10)+N'        }'+char(10)+N'    }'+char(10)+N'    return false;'+char(10)+N'}'+char(10)+N''+char(10)+N'int main() {'+char(10)+N'    std::vector<std::string> arr = {"Alex", "Bob", "Martin", "Sven"};'+char(10)+N'    std::string target = "Sven";'+char(10)+N'    bool result = search(arr, target);'+char(10)+N'    if (result) {'+char(10)+N'        std::cout << "Элемент найден." << std::endl;'+char(10)+N'    } else {'+char(10)+N'        std::cout << "Элемент не найден." << std::endl;'+char(10)+N'    }'+char(10)+N'    return 0;'+char(10)+N'}')

,(3, 1, N'import heapq'+char(10)+'from collections import defaultdict'+char(10)+''+char(10)+'def huffman_coding(freq):'+char(10)+'    heap = [[weight, [symbol, ""]] for symbol, weight in freq.items()]'+char(10)+'    heapq.heapify(heap)'+char(10)+'    while len(heap) > 1:'+char(10)+'        lo = heapq.heappop(heap)'+char(10)+'        hi = heapq.heappop(heap)'+char(10)+'        for pair in lo[1:]:'+char(10)+'            pair[1] = "0" + pair[1]'+char(10)+'        for pair in hi[1:]:'+char(10)+'            pair[1] = "1" + pair[1]'+char(10)+'        heapq.heappush(heap, [lo[0] + hi[0]] + lo[1:] + hi[1:])'+char(10)+'    return sorted(heapq.heappop(heap)[1:], key=lambda p: (len(p[-1]), p))'+char(10)+''+char(10)+N'# Пример использования'+char(10)+'data = "hello"'+char(10)+'freq = defaultdict(int)'+char(10)+'for symbol in data:'+char(10)+'    freq[symbol] += 1'+char(10)+'huff_codes = huffman_coding(freq)'+char(10)+N'print("Символ\tЧастота\tКод Хаффмана")'+char(10)+'for symbol, f in freq.items():'+char(10)+'    code = [x[1] for x in huff_codes if x[0] == symbol][0]'+char(10)+'    print(f"{symbol}\t{f}\t{code}")')

,(4, 1, N'def binary_search(arr, target):'+char(10)+'    left, right = 0, len(arr) - 1'+char(10)+'    while left <= right:'+char(10)+'        mid = (left + right) // 2'+char(10)+'        if arr[mid] == target:'+char(10)+'            return mid'+char(10)+'        elif arr[mid] < target:'+char(10)+'            left = mid + 1'+char(10)+'        else:'+char(10)+'            right = mid - 1'+char(10)+'    return -1'+char(10)+''+char(10)+N'# Пример использования'+char(10)+'arr = [1, 3, 5, 7, 9, 11, 13]'+char(10)+'target = 7'+char(10)+'result = binary_search(arr, target)'+char(10)+'if result != -1:'+char(10)+N'    print(f"Элемент найден в позиции {result}.")'+char(10)+'else:'+char(10)+N'    print("Элемент не найден.")')
,(4, 2, N'#include <iostream>'+char(10)+N'#include <vector>'+char(10)+N''+char(10)+N'int binary_search(const std::vector<int>& arr, int target) {'+char(10)+N'    int left = 0, right = arr.size() - 1;'+char(10)+N'    while (left <= right) {'+char(10)+N'        int mid = left + (right - left) / 2; // Избегаем переполнения'+char(10)+N'        if (arr[mid] == target) {'+char(10)+N'            return mid;'+char(10)+N'        } else if (arr[mid] < target) {'+char(10)+N'            left = mid + 1;'+char(10)+N'        } else {'+char(10)+N'            right = mid - 1;'+char(10)+N'        }'+char(10)+N'    }'+char(10)+N'    return -1;'+char(10)+N'}'+char(10)+N''+char(10)+N'int main() {'+char(10)+N'    std::vector<int> arr = {1, 3, 5, 7, 9, 11, 13};'+char(10)+N'    int target = 7;'+char(10)+N'    int result = binary_search(arr, target);'+char(10)+N'    if (result != -1) {'+char(10)+N'        std::cout << "Элемент найден в позиции " << result << "." << std::endl;'+char(10)+N'    } else {'+char(10)+N'        std::cout << "Элемент не найден." << std::endl;'+char(10)+N'    }'+char(10)+N'    return 0;'+char(10)+N'}')

,(5, 2, N'void BubbleSort(vector<int>& values) {'+char(10)+N'  for (size_t idx_i = 0; idx_i + 1 < values.size(); ++idx_i) {'+char(10)+N'    for (size_t idx_j = 0; idx_j + 1 < values.size() - idx_i; ++idx_j) {'+char(10)+N'      if (values[idx_j + 1] < values[idx_j]) {'+char(10)+N'        swap(values[idx_j], values[idx_j + 1]);'+char(10)+N'      }'+char(10)+N'    }'+char(10)+N'  }'+char(10)+N'}')
,(5, 1, N'def bubble_sort(values):'+char(10)+N'    for idx_i in range(len(values) - 1):'+char(10)+N'        for idx_j in range(len(values) - idx_i - 1):'+char(10)+N'            if values[idx_j + 1] < values[idx_j]:'+char(10)+N'                values[idx_j], values[idx_j + 1] = values[idx_j + 1], values[idx_j]'+char(10)+N''+char(10)+N'# Пример использования'+char(10)+N'values = [64, 34, 25, 12, 22, 11, 90]'+char(10)+N'bubble_sort(values)'+char(10)+N'print("Отсортированный список:", values)')

,(6, 2, N'void SelectionSort(vector<int>& values) {'+char(10)+N'  for (auto i = values.begin(); i != values.end(); ++i) {'+char(10)+N'    auto j = std::min_element(i, values.end());'+char(10)+N'    swap(*i, *j);'+char(10)+N'  }'+char(10)+N'}')

,(7, 2, N'int Partition(vector<int>& values, int l, int r) {'+char(10)+N'  int x = values[r];'+char(10)+N'  int less = l;'+char(10)+N''+char(10)+N'  for (int i = l; i < r; ++i) {'+char(10)+N'    if (values[i] <= x) {'+char(10)+N'      swap(values[i], values[less]);'+char(10)+N'      ++less;'+char(10)+N'    }'+char(10)+N'  }'+char(10)+N'  swap(values[less], values[r]);'+char(10)+N'  return less;'+char(10)+N'}'+char(10)+N''+char(10)+N'void QuickSortImpl(vector<int>& values, int l, int r) {'+char(10)+N'  if (l < r) {'+char(10)+N'    int q = Partition(values, l, r);'+char(10)+N'    QuickSortImpl(values, l, q - 1);'+char(10)+N'    QuickSortImpl(values, q + 1, r);'+char(10)+N'  }'+char(10)+N'}'+char(10)+N''+char(10)+N'void QuickSort(vector<int>& values) {'+char(10)+N'  if (!values.empty()) {'+char(10)+N'    QuickSortImpl(values, 0, values.size() - 1);'+char(10)+N'  }'+char(10)+N'}')

,(8, 1, N'def bfs(graph, start):'+char(10)+N'    queue = [start]'+char(10)+N'    visited = set()'+char(10)+N'    while queue:'+char(10)+N'        current = queue.pop(0)'+char(10)+N'        visited.add(current)'+char(10)+N'        for neighbor in graph[current]:'+char(10)+N'            if neighbor not in visited:'+char(10)+N'                queue.append(neighbor)'+char(10)+N''+char(10)+N'graph = {'+char(10)+N'    "A": ["B", "C"],'+char(10)+N'    "B": ["D", "E"],'+char(10)+N'    "C": ["F"],'+char(10)+N'    "D": [],'+char(10)+N'    "E": [],'+char(10)+N'    "F": [],'+char(10)+N'}'+char(10)+N'bfs(graph, "A")')


GO


INSERT INTO Users([Name], IsAdmin, [Login], PasswordHash)
VALUES(N'Azimjon', 0, N'anematov2002@gmail.com', N'123')
,(N'Акмалхон Бурхонов', 0, N'b@gmail.com', N'123')
,(N'Шаҳзод', 0, N'shahanshohov01@gmail.com', N'123')
,(N'admin', 1, N'admin', N'admin')

--,(N'', 0, '', '')

-- def search(arr, target):'+char(10)+'    for i in range(0, len(arr)):'+char(10)+'        if item== target:'+char(10)+'            return i'+char(10)+'    return -1'+char(10)+''+char(10)+'# Пример использования'+char(10)+'arr = [1, 3, 5, 7, 9, 11, 13]'+char(10)+'target = 7'+char(10)+'result = search(arr, target)'+char(10)+'if result != -1:'+char(10)+'    print(f"Элемент найден в позиции {result}.")'+char(10)+'else:'+char(10)+'    print("Элемент не найден.")
-- def search(arr, target):'+char(10)+'    for item in arr:'+char(10)+'        if item == target:'+char(10)+'            return true'+char(10)+'    return false'+char(10)+''+char(10)+'# Пример использования'+char(10)+'arr = ["Alex", "Bob", "Martin", "Sven"]'+char(10)+'target = "Sven"'+char(10)+'result = search(arr, target)'+char(10)+'if result:'+char(10)+'    print(f"Элемент найден.")'+char(10)+'else:'+char(10)+'    print("Элемент не найден.")
-- import heapq'+char(10)+'from collections import defaultdict'+char(10)+''+char(10)+'def huffman_coding(freq):'+char(10)+'    heap = [[weight, [symbol, ""]] for symbol, weight in freq.items()]'+char(10)+'    heapq.heapify(heap)'+char(10)+'    while len(heap) > 1:'+char(10)+'        lo = heapq.heappop(heap)'+char(10)+'        hi = heapq.heappop(heap)'+char(10)+'        for pair in lo[1:]:'+char(10)+'            pair[1] = '0' + pair[1]'+char(10)+'        for pair in hi[1:]:'+char(10)+'            pair[1] = '1' + pair[1]'+char(10)+'        heapq.heappush(heap, [lo[0] + hi[0]] + lo[1:] + hi[1:])'+char(10)+'    return sorted(heapq.heappop(heap)[1:], key=lambda p: (len(p[-1]), p))'+char(10)+''+char(10)+'# Пример использования'+char(10)+'data = "hello"'+char(10)+'freq = defaultdict(int)'+char(10)+'for symbol in data:'+char(10)+'    freq[symbol] += 1'+char(10)+'huff_codes = huffman_coding(freq)'+char(10)+'print("Символ\tЧастота\tКод Хаффмана")'+char(10)+'for symbol, f in freq.items():'+char(10)+'    code = [x[1] for x in huff_codes if x[0] == symbol][0]'+char(10)+'    print(f"{symbol}\t{f}\t{code}")

-- def binary_search(arr, target):'+char(10)+'    left, right = 0, len(arr) - 1'+char(10)+'    while left <= right:'+char(10)+'        mid = (left + right) // 2'+char(10)+'        if arr[mid] == target:'+char(10)+'            return mid'+char(10)+'        elif arr[mid] < target:'+char(10)+'            left = mid + 1'+char(10)+'        else:'+char(10)+'            right = mid - 1'+char(10)+'    return -1'+char(10)+''+char(10)+'# Пример использования'+char(10)+'arr = [1, 3, 5, 7, 9, 11, 13]'+char(10)+'target = 7'+char(10)+'result = binary_search(arr, target)'+char(10)+'if result != -1:'+char(10)+'    print(f"Элемент найден в позиции {result}.")'+char(10)+'else:'+char(10)+'    print("Элемент не найден.")'+char(10)+'


-- <code class="keyword">def</code> <code class="plain">binary_search(arr, target):</code><br><code class="plain">&emsp;left, right = 0, len(arr) - 1</code><br>&emsp;<code class="keyword">while</code><code class="plain"> left <= right:</code><br>&emsp;&emsp;<code class="plain">mid = (left + right) // 2</code><br>&emsp;&emsp;<code class="keyword">if</code"> <code class="plain">arr[mid] == target:</code><br>&emsp;&emsp;&emsp;<code class="keyword">return</code> <code class="plain">mid</code><br>&emsp;&emsp;<code class="keyword">elif</code> <code class="plain">arr[mid] < target:</code><br>&emsp;&emsp;&emsp;<code class="plain">left = mid + 1</code><br>&emsp;&emsp;<code class="keyword">else</code>:<br>&emsp;&emsp;&emsp;<code class="plain">right = mid - 1<code><br>&emsp;<code class="keyword">return</code> <code class="plain">-1</code><br> <br><code class="comments"># Пример использования</code><br><code class="plain">arr = [1, 3, 5, 7, 9, 11, 13]</code><br><code class="plain">target = 7</code><br><code class="plain">result = binary_search(arr, target)</code><br>if <code class="plain">result != -1:<code><br>&emsp;<code class="keyword">print<code><code class="plain">(</code><code class="string">f"Элемент найден в позиции </code><code class="plain">{result}</code><code class="string">."</code>)<br>else<code class="plain">:<code><br><code class="keyword">&emsp;print</code><code class="plain">(</code><code class="string">"Элемент не найден."</code><code class="plain">)</code>