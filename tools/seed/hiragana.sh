#!/bin/sh
PORT=$1
if [ "$PORT" = "" ]; then
  PORT=6379
fi

redis-cli -p $PORT sadd "romaji:あ" 'a'
redis-cli -p $PORT sadd "romaji:い" 'i'
redis-cli -p $PORT sadd "romaji:う" 'u'
redis-cli -p $PORT sadd "romaji:え" 'e'
redis-cli -p $PORT sadd "romaji:お" 'o'

redis-cli -p $PORT sadd "romaji:か" 'ka'
redis-cli -p $PORT sadd "romaji:き" 'ki'
redis-cli -p $PORT sadd "romaji:く" 'ku'
redis-cli -p $PORT sadd "romaji:け" 'ke'
redis-cli -p $PORT sadd "romaji:こ" 'ko'

redis-cli -p $PORT sadd "romaji:さ" 'sa'
redis-cli -p $PORT sadd "romaji:し" 'shi'
redis-cli -p $PORT sadd "romaji:す" 'su'
redis-cli -p $PORT sadd "romaji:せ" 'se'
redis-cli -p $PORT sadd "romaji:そ" 'so'

redis-cli -p $PORT sadd "romaji:た" 'ta'
redis-cli -p $PORT sadd "romaji:ち" 'chi'
redis-cli -p $PORT sadd "romaji:つ" 'tsu'
redis-cli -p $PORT sadd "romaji:て" 'te'
redis-cli -p $PORT sadd "romaji:と" 'to'

redis-cli -p $PORT sadd "romaji:な" 'na'
redis-cli -p $PORT sadd "romaji:に" 'ni'
redis-cli -p $PORT sadd "romaji:ぬ" 'nu'
redis-cli -p $PORT sadd "romaji:ね" 'ne'
redis-cli -p $PORT sadd "romaji:の" 'no'

redis-cli -p $PORT sadd "romaji:は" 'ha'
redis-cli -p $PORT sadd "romaji:ひ" 'hi'
redis-cli -p $PORT sadd "romaji:ふ" 'fu'
redis-cli -p $PORT sadd "romaji:へ" 'he'
redis-cli -p $PORT sadd "romaji:ほ" 'ho'

redis-cli -p $PORT sadd "romaji:ま" 'ma'
redis-cli -p $PORT sadd "romaji:み" 'mi'
redis-cli -p $PORT sadd "romaji:む" 'mu'
redis-cli -p $PORT sadd "romaji:め" 'me'
redis-cli -p $PORT sadd "romaji:も" 'mo'

redis-cli -p $PORT sadd "romaji:や" 'ya'
redis-cli -p $PORT sadd "romaji:ゆ" 'yu'
redis-cli -p $PORT sadd "romaji:よ" 'yo'

redis-cli -p $PORT sadd "romaji:ら" 'ra'
redis-cli -p $PORT sadd "romaji:り" 'ri'
redis-cli -p $PORT sadd "romaji:る" 'ru'
redis-cli -p $PORT sadd "romaji:れ" 're'
redis-cli -p $PORT sadd "romaji:ろ" 'ro'

redis-cli -p $PORT sadd "romaji:わ" 'wa'
redis-cli -p $PORT sadd "romaji:を" 'wo'
redis-cli -p $PORT sadd "romaji:を" 'o'
redis-cli -p $PORT sadd "romaji:ん" 'n'

redis-cli -p $PORT sadd "romaji:が" 'ga'
redis-cli -p $PORT sadd "romaji:ぎ" 'gi'
redis-cli -p $PORT sadd "romaji:ぐ" 'gu'
redis-cli -p $PORT sadd "romaji:げ" 'ge'
redis-cli -p $PORT sadd "romaji:ご" 'go'

redis-cli -p $PORT sadd "romaji:ざ" 'za'
redis-cli -p $PORT sadd "romaji:じ" 'ji'
redis-cli -p $PORT sadd "romaji:ず" 'zu'
redis-cli -p $PORT sadd "romaji:ぜ" 'ze'
redis-cli -p $PORT sadd "romaji:ぞ" 'zo'

redis-cli -p $PORT sadd "romaji:だ" 'da'
redis-cli -p $PORT sadd "romaji:じ" 'ji'
redis-cli -p $PORT sadd "romaji:ず" 'zu'
redis-cli -p $PORT sadd "romaji:で" 'de'
redis-cli -p $PORT sadd "romaji:ど" 'do'

redis-cli -p $PORT sadd "romaji:ば" 'ba'
redis-cli -p $PORT sadd "romaji:び" 'bi'
redis-cli -p $PORT sadd "romaji:ぶ" 'bu'
redis-cli -p $PORT sadd "romaji:べ" 'be'
redis-cli -p $PORT sadd "romaji:ぼ" 'bo'

redis-cli -p $PORT sadd "romaji:ぱ" 'pa'
redis-cli -p $PORT sadd "romaji:ぴ" 'pi'
redis-cli -p $PORT sadd "romaji:ぷ" 'pu'
redis-cli -p $PORT sadd "romaji:ぺ" 'pe'
redis-cli -p $PORT sadd "romaji:ぽ" 'po'

redis-cli -p $PORT sadd "romaji:きゃ" 'kya'
redis-cli -p $PORT sadd "romaji:きゅ" 'kyu'
redis-cli -p $PORT sadd "romaji:きょ" 'kyo'
redis-cli -p $PORT sadd "romaji:しゃ" 'sha'
redis-cli -p $PORT sadd "romaji:しゅ" 'shu'
redis-cli -p $PORT sadd "romaji:しょ" 'sho'
redis-cli -p $PORT sadd "romaji:ちゃ" 'cha'
redis-cli -p $PORT sadd "romaji:ちゅ" 'chu'
redis-cli -p $PORT sadd "romaji:ちょ" 'cho'
redis-cli -p $PORT sadd "romaji:にゃ" 'nya'
redis-cli -p $PORT sadd "romaji:にゅ" 'nyu'
redis-cli -p $PORT sadd "romaji:にょ" 'nyo'
redis-cli -p $PORT sadd "romaji:ひゃ" 'hya'
redis-cli -p $PORT sadd "romaji:ひゅ" 'hyu'
redis-cli -p $PORT sadd "romaji:ひょ" 'hyo'
redis-cli -p $PORT sadd "romaji:みゃ" 'mya'
redis-cli -p $PORT sadd "romaji:みゅ" 'myu'
redis-cli -p $PORT sadd "romaji:みょ" 'myo'
redis-cli -p $PORT sadd "romaji:りゃ" 'rya'
redis-cli -p $PORT sadd "romaji:りゅ" 'ryu'
redis-cli -p $PORT sadd "romaji:りょ" 'ryo'
redis-cli -p $PORT sadd "romaji:ぎゃ" 'gya'
redis-cli -p $PORT sadd "romaji:ぎゅ" 'gyu'
redis-cli -p $PORT sadd "romaji:ぎょ" 'gyo'
redis-cli -p $PORT sadd "romaji:じゃ" 'ja'
redis-cli -p $PORT sadd "romaji:じゃ" 'jya'
redis-cli -p $PORT sadd "romaji:じゅ" 'ju'
redis-cli -p $PORT sadd "romaji:じゅ" 'jyu'
redis-cli -p $PORT sadd "romaji:じょ" 'jo'
redis-cli -p $PORT sadd "romaji:じょ" 'jyo'
redis-cli -p $PORT sadd "romaji:びゃ" 'bya'
redis-cli -p $PORT sadd "romaji:びゅ" 'byu'
redis-cli -p $PORT sadd "romaji:びょ" 'byo'
redis-cli -p $PORT sadd "romaji:ぴゃ" 'pya'
redis-cli -p $PORT sadd "romaji:ぴゅ" 'pyu'
redis-cli -p $PORT sadd "romaji:ぴょ" 'pyo'

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
