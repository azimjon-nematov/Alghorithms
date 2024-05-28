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
	 ,(N'Быстрое возведение в степень C#', 1, NULL, 6)

GO

INSERT INTO Topics([Name], HasChildren, ParentId, [Order])
VALUES(N'Ҷустуҷӯи хатӣ', 0, 1, 1)
	 ,(N'Ҷустуҷӯи дуӣ', 0, 1, 2)
	 ,(N'Ҷудокунии ҳубобӣ', 0, 2, 1)
	 ,(N'Ҷудокунӣ аз рӯи интихоб', 0, 2, 2)
	 ,(N'Ҷудокунии зуд', 0, 2, 3)
	 ,(N'BFS (breadth first search)', 0, 3, 1)
	 ,(N'DFS (depth first search)', 0, 3, 2)
	 ,(N'Алгоритми Дейкстр', 0, 3, 3)
	 ,(N'Алгоритми Хаффман', 0, 5, 1)
	 ,(N'Алгоритми Краскал', 0, 5, 2)
	 ,(N'Рекурсивная реализация быстрого возведения в степень', 0, 6, 1)
	 ,(N'Итерационная реализация быстрого возведения в степень', 0, 6, 2)

GO

INSERT INTO Content(TopicId, ContentTypeId, [Data], Params, [Order])
VALUES(7, 2, N'Ин мақола мефаҳмонад, ки чӣ гуна алгоритми ҷустуҷӯи хатиро амалӣ кардан мумкин аст. Барои фаҳмидани он ки дар мақола чӣ рӯй дода истодааст шумо бояд дар бораи массивҳо ва давраҳо донед. Ин алгоритм хеле содда аст ва аксар вақт дар амал истифода мешавад.', NULL, 1)
	 ,(7, 2, N'Барои иҷрои ҷустуҷӯи хаттӣ, шумо бояд ҳамаи унсурҳои маҷмӯаро тафтиш кунед, агар элемент пайдо шавад, пас дар ин ҳолат одатан индекси элемент е true баргардонида мешавад.', NULL, 2)
	 ,(7, 2, N'Фарз мекунем, ки мо маҷмӯи ададҳои бутун дорем. Бояд индекси рақами додашударо пайдо кард, агар унсури додашуда дар маҷмӯа набошад, пас -1-ро баргардонидан лозим аст.', NULL, 3)
	 ,(7, 2, N'Мисол:', NULL, 4)

GO

INSERT INTO CodeLists(asd) VALUES(NULL), (NULL), (NULL), (NULL);
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

GO

INSERT INTO CodeInLang(CodeListId, LanguageId, Code)
VALUES(1, 1, N'def search(arr, target):'+char(10)+N'    for i in range(0, len(arr)):'+char(10)+'        if item== target:'+char(10)+'            return i'+char(10)+'    return -1'+char(10)+''+char(10)+N'# Пример использования'+char(10)+'arr = [1, 3, 5, 7, 9, 11, 13]'+char(10)+'target = 7'+char(10)+'result = search(arr, target)'+char(10)+'if result != -1:'+char(10)+N'    print(f"Элемент найден в позиции {result}.")'+char(10)+'else:'+char(10)+N'    print("Элемент не найден.")')
,(1, 2, '#include <iostream>'+char(10)+N'using namespace std;'+char(10)+N'int main() {'+char(10)+N'    int arr[7] = { 1, 3, 5, 7, 9, 11, 13 };'+char(10)+N'    int target = 7, result = -1;'+char(10)+N'    for(int i=0; i < 7; i++) {'+char(10)+N'        if(arr[i] == target) {'+char(10)+N'            result = i;'+char(10)+N'            cout << "Элемент найден в позиции " << i << ".";'+char(10)+N'            break;'+char(10)+N'        }'+char(10)+N'    }'+char(10)+N''+char(10)+N'    if(result != -1)'+char(10)+N'        cout << "Элемент найден в позиции " << i << ".";'+char(10)+N'    else'+char(10)+N'        cout << "Элемент не найден.";'+char(10)+N'}')

,(2, 1, N'def search(arr, target):'+char(10)+'    for item in arr:'+char(10)+'        if item == target:'+char(10)+'            return true'+char(10)+'    return false'+char(10)+''+char(10)+N'# Пример использования'+char(10)+'arr = ["Alex", "Bob", "Martin", "Sven"]'+char(10)+'target = "Sven"'+char(10)+'result = search(arr, target)'+char(10)+'if result:'+char(10)+N'    print(f"Элемент найден.")'+char(10)+'else:'+char(10)+N'    print("Элемент не найден.")')
,(3, 1, N'import heapq'+char(10)+'from collections import defaultdict'+char(10)+''+char(10)+'def huffman_coding(freq):'+char(10)+'    heap = [[weight, [symbol, ""]] for symbol, weight in freq.items()]'+char(10)+'    heapq.heapify(heap)'+char(10)+'    while len(heap) > 1:'+char(10)+'        lo = heapq.heappop(heap)'+char(10)+'        hi = heapq.heappop(heap)'+char(10)+'        for pair in lo[1:]:'+char(10)+'            pair[1] = "0" + pair[1]'+char(10)+'        for pair in hi[1:]:'+char(10)+'            pair[1] = "1" + pair[1]'+char(10)+'        heapq.heappush(heap, [lo[0] + hi[0]] + lo[1:] + hi[1:])'+char(10)+'    return sorted(heapq.heappop(heap)[1:], key=lambda p: (len(p[-1]), p))'+char(10)+''+char(10)+N'# Пример использования'+char(10)+'data = "hello"'+char(10)+'freq = defaultdict(int)'+char(10)+'for symbol in data:'+char(10)+'    freq[symbol] += 1'+char(10)+'huff_codes = huffman_coding(freq)'+char(10)+N'print("Символ\tЧастота\tКод Хаффмана")'+char(10)+'for symbol, f in freq.items():'+char(10)+'    code = [x[1] for x in huff_codes if x[0] == symbol][0]'+char(10)+'    print(f"{symbol}\t{f}\t{code}")')
,(4, 1, N'def binary_search(arr, target):'+char(10)+'    left, right = 0, len(arr) - 1'+char(10)+'    while left <= right:'+char(10)+'        mid = (left + right) // 2'+char(10)+'        if arr[mid] == target:'+char(10)+'            return mid'+char(10)+'        elif arr[mid] < target:'+char(10)+'            left = mid + 1'+char(10)+'        else:'+char(10)+'            right = mid - 1'+char(10)+'    return -1'+char(10)+''+char(10)+N'# Пример использования'+char(10)+'arr = [1, 3, 5, 7, 9, 11, 13]'+char(10)+'target = 7'+char(10)+'result = binary_search(arr, target)'+char(10)+'if result != -1:'+char(10)+N'    print(f"Элемент найден в позиции {result}.")'+char(10)+'else:'+char(10)+N'    print("Элемент не найден.")')


-- def search(arr, target):'+char(10)+'    for i in range(0, len(arr)):'+char(10)+'        if item== target:'+char(10)+'            return i'+char(10)+'    return -1'+char(10)+''+char(10)+'# Пример использования'+char(10)+'arr = [1, 3, 5, 7, 9, 11, 13]'+char(10)+'target = 7'+char(10)+'result = search(arr, target)'+char(10)+'if result != -1:'+char(10)+'    print(f"Элемент найден в позиции {result}.")'+char(10)+'else:'+char(10)+'    print("Элемент не найден.")
-- def search(arr, target):'+char(10)+'    for item in arr:'+char(10)+'        if item == target:'+char(10)+'            return true'+char(10)+'    return false'+char(10)+''+char(10)+'# Пример использования'+char(10)+'arr = ["Alex", "Bob", "Martin", "Sven"]'+char(10)+'target = "Sven"'+char(10)+'result = search(arr, target)'+char(10)+'if result:'+char(10)+'    print(f"Элемент найден.")'+char(10)+'else:'+char(10)+'    print("Элемент не найден.")
-- import heapq'+char(10)+'from collections import defaultdict'+char(10)+''+char(10)+'def huffman_coding(freq):'+char(10)+'    heap = [[weight, [symbol, ""]] for symbol, weight in freq.items()]'+char(10)+'    heapq.heapify(heap)'+char(10)+'    while len(heap) > 1:'+char(10)+'        lo = heapq.heappop(heap)'+char(10)+'        hi = heapq.heappop(heap)'+char(10)+'        for pair in lo[1:]:'+char(10)+'            pair[1] = '0' + pair[1]'+char(10)+'        for pair in hi[1:]:'+char(10)+'            pair[1] = '1' + pair[1]'+char(10)+'        heapq.heappush(heap, [lo[0] + hi[0]] + lo[1:] + hi[1:])'+char(10)+'    return sorted(heapq.heappop(heap)[1:], key=lambda p: (len(p[-1]), p))'+char(10)+''+char(10)+'# Пример использования'+char(10)+'data = "hello"'+char(10)+'freq = defaultdict(int)'+char(10)+'for symbol in data:'+char(10)+'    freq[symbol] += 1'+char(10)+'huff_codes = huffman_coding(freq)'+char(10)+'print("Символ\tЧастота\tКод Хаффмана")'+char(10)+'for symbol, f in freq.items():'+char(10)+'    code = [x[1] for x in huff_codes if x[0] == symbol][0]'+char(10)+'    print(f"{symbol}\t{f}\t{code}")

-- def binary_search(arr, target):'+char(10)+'    left, right = 0, len(arr) - 1'+char(10)+'    while left <= right:'+char(10)+'        mid = (left + right) // 2'+char(10)+'        if arr[mid] == target:'+char(10)+'            return mid'+char(10)+'        elif arr[mid] < target:'+char(10)+'            left = mid + 1'+char(10)+'        else:'+char(10)+'            right = mid - 1'+char(10)+'    return -1'+char(10)+''+char(10)+'# Пример использования'+char(10)+'arr = [1, 3, 5, 7, 9, 11, 13]'+char(10)+'target = 7'+char(10)+'result = binary_search(arr, target)'+char(10)+'if result != -1:'+char(10)+'    print(f"Элемент найден в позиции {result}.")'+char(10)+'else:'+char(10)+'    print("Элемент не найден.")'+char(10)+'


-- <code class="keyword">def</code> <code class="plain">binary_search(arr, target):</code><br><code class="plain">&emsp;left, right = 0, len(arr) - 1</code><br>&emsp;<code class="keyword">while</code><code class="plain"> left <= right:</code><br>&emsp;&emsp;<code class="plain">mid = (left + right) // 2</code><br>&emsp;&emsp;<code class="keyword">if</code"> <code class="plain">arr[mid] == target:</code><br>&emsp;&emsp;&emsp;<code class="keyword">return</code> <code class="plain">mid</code><br>&emsp;&emsp;<code class="keyword">elif</code> <code class="plain">arr[mid] < target:</code><br>&emsp;&emsp;&emsp;<code class="plain">left = mid + 1</code><br>&emsp;&emsp;<code class="keyword">else</code>:<br>&emsp;&emsp;&emsp;<code class="plain">right = mid - 1<code><br>&emsp;<code class="keyword">return</code> <code class="plain">-1</code><br> <br><code class="comments"># Пример использования</code><br><code class="plain">arr = [1, 3, 5, 7, 9, 11, 13]</code><br><code class="plain">target = 7</code><br><code class="plain">result = binary_search(arr, target)</code><br>if <code class="plain">result != -1:<code><br>&emsp;<code class="keyword">print<code><code class="plain">(</code><code class="string">f"Элемент найден в позиции </code><code class="plain">{result}</code><code class="string">."</code>)<br>else<code class="plain">:<code><br><code class="keyword">&emsp;print</code><code class="plain">(</code><code class="string">"Элемент не найден."</code><code class="plain">)</code>