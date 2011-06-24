#!/bin/sh
PORT=$1
if [ "$PORT" = "" ]; then
  PORT=6379
fi

redis-cli -p $PORT sadd "romanji:あ" 'a'
redis-cli -p $PORT sadd "romanji:い" 'i'
redis-cli -p $PORT sadd "romanji:う" 'u'
redis-cli -p $PORT sadd "romanji:え" 'e'
redis-cli -p $PORT sadd "romanji:お" 'o'

redis-cli -p $PORT sadd "romanji:か" 'ka'
redis-cli -p $PORT sadd "romanji:き" 'ki'
redis-cli -p $PORT sadd "romanji:く" 'ku'
redis-cli -p $PORT sadd "romanji:け" 'ke'
redis-cli -p $PORT sadd "romanji:こ" 'ko'

redis-cli -p $PORT sadd "romanji:さ" 'sa'
redis-cli -p $PORT sadd "romanji:し" 'shi'
redis-cli -p $PORT sadd "romanji:す" 'su'
redis-cli -p $PORT sadd "romanji:せ" 'se'
redis-cli -p $PORT sadd "romanji:そ" 'so'

redis-cli -p $PORT sadd "romanji:た" 'ta'
redis-cli -p $PORT sadd "romanji:ち" 'chi'
redis-cli -p $PORT sadd "romanji:つ" 'tsu'
redis-cli -p $PORT sadd "romanji:て" 'te'
redis-cli -p $PORT sadd "romanji:と" 'to'

redis-cli -p $PORT sadd "romanji:な" 'na'
redis-cli -p $PORT sadd "romanji:に" 'ni'
redis-cli -p $PORT sadd "romanji:ぬ" 'nu'
redis-cli -p $PORT sadd "romanji:ね" 'ne'
redis-cli -p $PORT sadd "romanji:の" 'no'

redis-cli -p $PORT sadd "romanji:は" 'ha'
redis-cli -p $PORT sadd "romanji:ひ" 'hi'
redis-cli -p $PORT sadd "romanji:ふ" 'fu'
redis-cli -p $PORT sadd "romanji:へ" 'he'
redis-cli -p $PORT sadd "romanji:ほ" 'ho'

redis-cli -p $PORT sadd "romanji:ま" 'ma'
redis-cli -p $PORT sadd "romanji:み" 'mi'
redis-cli -p $PORT sadd "romanji:む" 'mu'
redis-cli -p $PORT sadd "romanji:め" 'me'
redis-cli -p $PORT sadd "romanji:も" 'mo'

redis-cli -p $PORT sadd "romanji:や" 'ya'
redis-cli -p $PORT sadd "romanji:ゆ" 'yu'
redis-cli -p $PORT sadd "romanji:よ" 'yo'

redis-cli -p $PORT sadd "romanji:ら" 'ra'
redis-cli -p $PORT sadd "romanji:り" 'ri'
redis-cli -p $PORT sadd "romanji:る" 'ru'
redis-cli -p $PORT sadd "romanji:れ" 're'
redis-cli -p $PORT sadd "romanji:ろ" 'ro'

redis-cli -p $PORT sadd "romanji:わ" 'wa'
redis-cli -p $PORT sadd "romanji:を" 'o'
redis-cli -p $PORT sadd "romanji:ん" 'n'

redis-cli -p $PORT sadd "romanji:が" 'ga'
redis-cli -p $PORT sadd "romanji:ぎ" 'gi'
redis-cli -p $PORT sadd "romanji:ぐ" 'gu'
redis-cli -p $PORT sadd "romanji:げ" 'ge'
redis-cli -p $PORT sadd "romanji:ご" 'go'

redis-cli -p $PORT sadd "romanji:ざ" 'za'
redis-cli -p $PORT sadd "romanji:じ" 'ji'
redis-cli -p $PORT sadd "romanji:ず" 'zu'
redis-cli -p $PORT sadd "romanji:ぜ" 'ze'
redis-cli -p $PORT sadd "romanji:ぞ" 'zo'

redis-cli -p $PORT sadd "romanji:だ" 'da'
redis-cli -p $PORT sadd "romanji:じ" 'ji'
redis-cli -p $PORT sadd "romanji:ず" 'zu'
redis-cli -p $PORT sadd "romanji:で" 'de'
redis-cli -p $PORT sadd "romanji:ど" 'do'

redis-cli -p $PORT sadd "romanji:ば" 'ba'
redis-cli -p $PORT sadd "romanji:び" 'bi'
redis-cli -p $PORT sadd "romanji:ぶ" 'bu'
redis-cli -p $PORT sadd "romanji:べ" 'be'
redis-cli -p $PORT sadd "romanji:ぼ" 'bo'

redis-cli -p $PORT sadd "romanji:ぱ" 'pa'
redis-cli -p $PORT sadd "romanji:ぴ" 'pi'
redis-cli -p $PORT sadd "romanji:ぷ" 'pu'
redis-cli -p $PORT sadd "romanji:ぺ" 'pe'
redis-cli -p $PORT sadd "romanji:ぽ" 'po'

redis-cli -p $PORT sadd "romanji:きゃ" 'kya'
redis-cli -p $PORT sadd "romanji:きゅ" 'kyu'
redis-cli -p $PORT sadd "romanji:きょ" 'kyo'
redis-cli -p $PORT sadd "romanji:しゃ" 'sha'
redis-cli -p $PORT sadd "romanji:しゅ" 'shu'
redis-cli -p $PORT sadd "romanji:しょ" 'sho'
redis-cli -p $PORT sadd "romanji:ちゃ" 'cha'
redis-cli -p $PORT sadd "romanji:ちゅ" 'chu'
redis-cli -p $PORT sadd "romanji:ちょ" 'cho'
redis-cli -p $PORT sadd "romanji:にゃ" 'nya'
redis-cli -p $PORT sadd "romanji:にゅ" 'nyu'
redis-cli -p $PORT sadd "romanji:にょ" 'nyo'
redis-cli -p $PORT sadd "romanji:ひゃ" 'hya'
redis-cli -p $PORT sadd "romanji:ひゅ" 'hyu'
redis-cli -p $PORT sadd "romanji:ひょ" 'hyo'
redis-cli -p $PORT sadd "romanji:みゃ" 'mya'
redis-cli -p $PORT sadd "romanji:みゅ" 'myu'
redis-cli -p $PORT sadd "romanji:みょ" 'myo'
redis-cli -p $PORT sadd "romanji:りゃ" 'rya'
redis-cli -p $PORT sadd "romanji:りゅ" 'ryu'
redis-cli -p $PORT sadd "romanji:りょ" 'ryo'
redis-cli -p $PORT sadd "romanji:ぎゃ" 'gya'
redis-cli -p $PORT sadd "romanji:ぎゅ" 'gyu'
redis-cli -p $PORT sadd "romanji:ぎょ" 'gyo'
redis-cli -p $PORT sadd "romanji:じゃ" 'ja'
redis-cli -p $PORT sadd "romanji:じゃ" 'jya'
redis-cli -p $PORT sadd "romanji:じゅ" 'ju'
redis-cli -p $PORT sadd "romanji:じゅ" 'jyu'
redis-cli -p $PORT sadd "romanji:じょ" 'jo'
redis-cli -p $PORT sadd "romanji:じょ" 'jyo'
redis-cli -p $PORT sadd "romanji:びゃ" 'bya'
redis-cli -p $PORT sadd "romanji:びゅ" 'byu'
redis-cli -p $PORT sadd "romanji:びょ" 'byo'
redis-cli -p $PORT sadd "romanji:ぴゃ" 'pya'
redis-cli -p $PORT sadd "romanji:ぴゅ" 'pyu'
redis-cli -p $PORT sadd "romanji:ぴょ" 'pyo'

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
