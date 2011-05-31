#!/bin/sh
PORT=6379

redis-cli -p $PORT set "charset:hiragana:あ:romanji" 'a'
redis-cli -p $PORT set "charset:hiragana:い:romanji" 'i'
redis-cli -p $PORT set "charset:hiragana:う:romanji" 'u'
redis-cli -p $PORT set "charset:hiragana:え:romanji" 'e'
redis-cli -p $PORT set "charset:hiragana:お:romanji" 'o'

redis-cli -p $PORT set "charset:hiragana:か:romanji" 'ka'
redis-cli -p $PORT set "charset:hiragana:き:romanji" 'ki'
redis-cli -p $PORT set "charset:hiragana:く:romanji" 'ku'
redis-cli -p $PORT set "charset:hiragana:け:romanji" 'ke'
redis-cli -p $PORT set "charset:hiragana:こ:romanji" 'ko'

redis-cli -p $PORT set "charset:hiragana:さ:romanji" 'sa'
redis-cli -p $PORT set "charset:hiragana:し:romanji" 'shi'
redis-cli -p $PORT set "charset:hiragana:す:romanji" 'su'
redis-cli -p $PORT set "charset:hiragana:せ:romanji" 'se'
redis-cli -p $PORT set "charset:hiragana:そ:romanji" 'so'

redis-cli -p $PORT set "charset:hiragana:た:romanji" 'ta'
redis-cli -p $PORT set "charset:hiragana:ち:romanji" 'chi'
redis-cli -p $PORT set "charset:hiragana:つ:romanji" 'tsu'
redis-cli -p $PORT set "charset:hiragana:て:romanji" 'te'
redis-cli -p $PORT set "charset:hiragana:と:romanji" 'to'

redis-cli -p $PORT set "charset:hiragana:な:romanji" 'na'
redis-cli -p $PORT set "charset:hiragana:に:romanji" 'ni'
redis-cli -p $PORT set "charset:hiragana:ぬ:romanji" 'nu'
redis-cli -p $PORT set "charset:hiragana:ね:romanji" 'ne'
redis-cli -p $PORT set "charset:hiragana:の:romanji" 'no'

redis-cli -p $PORT set "charset:hiragana:は:romanji" 'ha'
redis-cli -p $PORT set "charset:hiragana:ひ:romanji" 'hi'
redis-cli -p $PORT set "charset:hiragana:ふ:romanji" 'fu'
redis-cli -p $PORT set "charset:hiragana:へ:romanji" 'he'
redis-cli -p $PORT set "charset:hiragana:ほ:romanji" 'ho'

redis-cli -p $PORT set "charset:hiragana:ま:romanji" 'ma'
redis-cli -p $PORT set "charset:hiragana:み:romanji" 'mi'
redis-cli -p $PORT set "charset:hiragana:む:romanji" 'mu'
redis-cli -p $PORT set "charset:hiragana:め:romanji" 'me'
redis-cli -p $PORT set "charset:hiragana:も:romanji" 'mo'

redis-cli -p $PORT set "charset:hiragana:や:romanji" 'ya'
redis-cli -p $PORT set "charset:hiragana:ゆ:romanji" 'yu'
redis-cli -p $PORT set "charset:hiragana:よ:romanji" 'yo'

redis-cli -p $PORT set "charset:hiragana:ら:romanji" 'ra'
redis-cli -p $PORT set "charset:hiragana:り:romanji" 'ri'
redis-cli -p $PORT set "charset:hiragana:る:romanji" 'ru'
redis-cli -p $PORT set "charset:hiragana:れ:romanji" 're'
redis-cli -p $PORT set "charset:hiragana:ろ:romanji" 'ro'

redis-cli -p $PORT set "charset:hiragana:わ:romanji" 'wa'
redis-cli -p $PORT set "charset:hiragana:を:romanji" 'o'
redis-cli -p $PORT set "charset:hiragana:ん:romanji" 'n'

redis-cli -p $PORT set "charset:hiragana:が:romanji" 'ga'
redis-cli -p $PORT set "charset:hiragana:ぎ:romanji" 'gi'
redis-cli -p $PORT set "charset:hiragana:ぐ:romanji" 'gu'
redis-cli -p $PORT set "charset:hiragana:げ:romanji" 'ge'
redis-cli -p $PORT set "charset:hiragana:ご:romanji" 'go'

redis-cli -p $PORT set "charset:hiragana:ざ:romanji" 'za'
redis-cli -p $PORT set "charset:hiragana:じ:romanji" 'ji'
redis-cli -p $PORT set "charset:hiragana:ず:romanji" 'zu'
redis-cli -p $PORT set "charset:hiragana:ぜ:romanji" 'ze'
redis-cli -p $PORT set "charset:hiragana:ぞ:romanji" 'zo'

redis-cli -p $PORT set "charset:hiragana:だ:romanji" 'da'
redis-cli -p $PORT set "charset:hiragana:じ:romanji" 'ji'
redis-cli -p $PORT set "charset:hiragana:ず:romanji" 'zu'
redis-cli -p $PORT set "charset:hiragana:で:romanji" 'de'
redis-cli -p $PORT set "charset:hiragana:ど:romanji" 'do'

redis-cli -p $PORT set "charset:hiragana:ば:romanji" 'ba'
redis-cli -p $PORT set "charset:hiragana:び:romanji" 'bi'
redis-cli -p $PORT set "charset:hiragana:ぶ:romanji" 'bu'
redis-cli -p $PORT set "charset:hiragana:べ:romanji" 'be'
redis-cli -p $PORT set "charset:hiragana:ぼ:romanji" 'bo'

redis-cli -p $PORT set "charset:hiragana:ぱ:romanji" 'pa'
redis-cli -p $PORT set "charset:hiragana:ぴ:romanji" 'pi'
redis-cli -p $PORT set "charset:hiragana:ぷ:romanji" 'pu'
redis-cli -p $PORT set "charset:hiragana:ぺ:romanji" 'pe'
redis-cli -p $PORT set "charset:hiragana:ぽ:romanji" 'po'

redis-cli -p $PORT set "charset:hiragana:きゃ:romanji" 'kya'
redis-cli -p $PORT set "charset:hiragana:きゅ:romanji" 'kyu'
redis-cli -p $PORT set "charset:hiragana:きょ:romanji" 'kyo'
redis-cli -p $PORT set "charset:hiragana:しゃ:romanji" 'sha'
redis-cli -p $PORT set "charset:hiragana:しゅ:romanji" 'shu'
redis-cli -p $PORT set "charset:hiragana:しょ:romanji" 'sho'
redis-cli -p $PORT set "charset:hiragana:ちゃ:romanji" 'cha'
redis-cli -p $PORT set "charset:hiragana:ちゅ:romanji" 'chu'
redis-cli -p $PORT set "charset:hiragana:ちょ:romanji" 'cho'
redis-cli -p $PORT set "charset:hiragana:にゃ:romanji" 'nyu'
redis-cli -p $PORT set "charset:hiragana:にゅ:romanji" 'nya'
redis-cli -p $PORT set "charset:hiragana:にょ:romanji" 'nyo'
redis-cli -p $PORT set "charset:hiragana:ひゃ:romanji" 'hya'
redis-cli -p $PORT set "charset:hiragana:ひゅ:romanji" 'hyu'
redis-cli -p $PORT set "charset:hiragana:ひょ:romanji" 'hyo'
redis-cli -p $PORT set "charset:hiragana:みゃ:romanji" 'mya'
redis-cli -p $PORT set "charset:hiragana:みゅ:romanji" 'myu'
redis-cli -p $PORT set "charset:hiragana:みょ:romanji" 'myo'
redis-cli -p $PORT set "charset:hiragana:りゃ:romanji" 'rya'
redis-cli -p $PORT set "charset:hiragana:りゅ:romanji" 'ryu'
redis-cli -p $PORT set "charset:hiragana:りょ:romanji" 'ryo'
redis-cli -p $PORT set "charset:hiragana:ぎゃ:romanji" 'gya'
redis-cli -p $PORT set "charset:hiragana:ぎゅ:romanji" 'gyu'
redis-cli -p $PORT set "charset:hiragana:ぎょ:romanji" 'gyo'
redis-cli -p $PORT set "charset:hiragana:じゃ:romanji" 'ja'
redis-cli -p $PORT set "charset:hiragana:じゅ:romanji" 'ju'
redis-cli -p $PORT set "charset:hiragana:じょ:romanji" 'jo'
redis-cli -p $PORT set "charset:hiragana:びゃ:romanji" 'bya'
redis-cli -p $PORT set "charset:hiragana:びゅ:romanji" 'byu'
redis-cli -p $PORT set "charset:hiragana:びょ:romanji" 'byo'
redis-cli -p $PORT set "charset:hiragana:ぴゃ:romanji" 'pya'
redis-cli -p $PORT set "charset:hiragana:ぴゅ:romanji" 'pyu'
redis-cli -p $PORT set "charset:hiragana:ぴょ:romanji" 'pyo'

redis-cli -p $PORT sadd "charset:hiragana" "あ" 
redis-cli -p $PORT sadd "charset:hiragana" "い" 
redis-cli -p $PORT sadd "charset:hiragana" "う" 
redis-cli -p $PORT sadd "charset:hiragana" "え" 
redis-cli -p $PORT sadd "charset:hiragana" "お" 

redis-cli -p $PORT sadd "charset:hiragana" "か" 
redis-cli -p $PORT sadd "charset:hiragana" "き" 
redis-cli -p $PORT sadd "charset:hiragana" "く" 
redis-cli -p $PORT sadd "charset:hiragana" "け" 
redis-cli -p $PORT sadd "charset:hiragana" "こ" 

redis-cli -p $PORT sadd "charset:hiragana" "さ" 
redis-cli -p $PORT sadd "charset:hiragana" "し" 
redis-cli -p $PORT sadd "charset:hiragana" "す" 
redis-cli -p $PORT sadd "charset:hiragana" "せ" 
redis-cli -p $PORT sadd "charset:hiragana" "そ" 

redis-cli -p $PORT sadd "charset:hiragana" "た" 
redis-cli -p $PORT sadd "charset:hiragana" "ち" 
redis-cli -p $PORT sadd "charset:hiragana" "つ" 
redis-cli -p $PORT sadd "charset:hiragana" "て" 
redis-cli -p $PORT sadd "charset:hiragana" "と" 

redis-cli -p $PORT sadd "charset:hiragana" "な" 
redis-cli -p $PORT sadd "charset:hiragana" "に" 
redis-cli -p $PORT sadd "charset:hiragana" "ぬ" 
redis-cli -p $PORT sadd "charset:hiragana" "ね" 
redis-cli -p $PORT sadd "charset:hiragana" "の" 

redis-cli -p $PORT sadd "charset:hiragana" "は" 
redis-cli -p $PORT sadd "charset:hiragana" "ひ" 
redis-cli -p $PORT sadd "charset:hiragana" "ふ" 
redis-cli -p $PORT sadd "charset:hiragana" "へ" 
redis-cli -p $PORT sadd "charset:hiragana" "ほ" 

redis-cli -p $PORT sadd "charset:hiragana" "ま" 
redis-cli -p $PORT sadd "charset:hiragana" "み" 
redis-cli -p $PORT sadd "charset:hiragana" "む" 
redis-cli -p $PORT sadd "charset:hiragana" "め" 
redis-cli -p $PORT sadd "charset:hiragana" "も" 

redis-cli -p $PORT sadd "charset:hiragana" "や" 
redis-cli -p $PORT sadd "charset:hiragana" "ゆ" 
redis-cli -p $PORT sadd "charset:hiragana" "よ" 

redis-cli -p $PORT sadd "charset:hiragana" "ら" 
redis-cli -p $PORT sadd "charset:hiragana" "り" 
redis-cli -p $PORT sadd "charset:hiragana" "る" 
redis-cli -p $PORT sadd "charset:hiragana" "れ" 
redis-cli -p $PORT sadd "charset:hiragana" "ろ" 

redis-cli -p $PORT sadd "charset:hiragana" "わ" 
redis-cli -p $PORT sadd "charset:hiragana" "を" 
redis-cli -p $PORT sadd "charset:hiragana" "ん" 

redis-cli -p $PORT sadd "charset:hiragana" "が" 
redis-cli -p $PORT sadd "charset:hiragana" "ぎ" 
redis-cli -p $PORT sadd "charset:hiragana" "ぐ" 
redis-cli -p $PORT sadd "charset:hiragana" "げ" 
redis-cli -p $PORT sadd "charset:hiragana" "ご" 

redis-cli -p $PORT sadd "charset:hiragana" "ざ" 
redis-cli -p $PORT sadd "charset:hiragana" "じ" 
redis-cli -p $PORT sadd "charset:hiragana" "ず" 
redis-cli -p $PORT sadd "charset:hiragana" "ぜ" 
redis-cli -p $PORT sadd "charset:hiragana" "ぞ" 

redis-cli -p $PORT sadd "charset:hiragana" "だ" 
redis-cli -p $PORT sadd "charset:hiragana" "じ" 
redis-cli -p $PORT sadd "charset:hiragana" "ず" 
redis-cli -p $PORT sadd "charset:hiragana" "で" 
redis-cli -p $PORT sadd "charset:hiragana" "ど" 

redis-cli -p $PORT sadd "charset:hiragana" "ば" 
redis-cli -p $PORT sadd "charset:hiragana" "び" 
redis-cli -p $PORT sadd "charset:hiragana" "ぶ" 
redis-cli -p $PORT sadd "charset:hiragana" "べ" 
redis-cli -p $PORT sadd "charset:hiragana" "ぼ" 

redis-cli -p $PORT sadd "charset:hiragana" "ぱ" 
redis-cli -p $PORT sadd "charset:hiragana" "ぴ" 
redis-cli -p $PORT sadd "charset:hiragana" "ぷ" 
redis-cli -p $PORT sadd "charset:hiragana" "ぺ" 
redis-cli -p $PORT sadd "charset:hiragana" "ぽ" 

redis-cli -p $PORT sadd "charset:hiragana" "きゃ"
redis-cli -p $PORT sadd "charset:hiragana" "きゅ"
redis-cli -p $PORT sadd "charset:hiragana" "きょ"
redis-cli -p $PORT sadd "charset:hiragana" "しゃ"
redis-cli -p $PORT sadd "charset:hiragana" "しゅ"
redis-cli -p $PORT sadd "charset:hiragana" "しょ"
redis-cli -p $PORT sadd "charset:hiragana" "ちゃ"
redis-cli -p $PORT sadd "charset:hiragana" "ちゅ"
redis-cli -p $PORT sadd "charset:hiragana" "ちょ"
redis-cli -p $PORT sadd "charset:hiragana" "にゃ"
redis-cli -p $PORT sadd "charset:hiragana" "にゅ"
redis-cli -p $PORT sadd "charset:hiragana" "にょ"
redis-cli -p $PORT sadd "charset:hiragana" "ひゃ"
redis-cli -p $PORT sadd "charset:hiragana" "ひゅ"
redis-cli -p $PORT sadd "charset:hiragana" "ひょ"
redis-cli -p $PORT sadd "charset:hiragana" "みゃ"
redis-cli -p $PORT sadd "charset:hiragana" "みゅ"
redis-cli -p $PORT sadd "charset:hiragana" "みょ"
redis-cli -p $PORT sadd "charset:hiragana" "りゃ"
redis-cli -p $PORT sadd "charset:hiragana" "りゅ"
redis-cli -p $PORT sadd "charset:hiragana" "りょ"
redis-cli -p $PORT sadd "charset:hiragana" "ぎゃ"
redis-cli -p $PORT sadd "charset:hiragana" "ぎゅ"
redis-cli -p $PORT sadd "charset:hiragana" "ぎょ"
redis-cli -p $PORT sadd "charset:hiragana" "じゃ"
redis-cli -p $PORT sadd "charset:hiragana" "じゅ"
redis-cli -p $PORT sadd "charset:hiragana" "じょ"
redis-cli -p $PORT sadd "charset:hiragana" "びゃ"
redis-cli -p $PORT sadd "charset:hiragana" "びゅ"
redis-cli -p $PORT sadd "charset:hiragana" "びょ"
redis-cli -p $PORT sadd "charset:hiragana" "ぴゃ"
redis-cli -p $PORT sadd "charset:hiragana" "ぴゅ"
redis-cli -p $PORT sadd "charset:hiragana" "ぴょ"
