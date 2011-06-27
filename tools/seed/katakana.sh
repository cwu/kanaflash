#!/bin/sh
PORT=$1

if [ "$PORT" = "" ]; then
  PORT=6379
fi

redis-cli -p $PORT sadd "romanji:ア" 'a'
redis-cli -p $PORT sadd "romanji:イ" 'i'
redis-cli -p $PORT sadd "romanji:ウ" 'u'
redis-cli -p $PORT sadd "romanji:エ" 'e'
redis-cli -p $PORT sadd "romanji:オ" 'o'

redis-cli -p $PORT sadd "romanji:カ" 'ka'
redis-cli -p $PORT sadd "romanji:キ" 'ki'
redis-cli -p $PORT sadd "romanji:ク" 'ku'
redis-cli -p $PORT sadd "romanji:ケ" 'ke'
redis-cli -p $PORT sadd "romanji:コ" 'ko'

redis-cli -p $PORT sadd "romanji:サ" 'sa'
redis-cli -p $PORT sadd "romanji:シ" 'shi'
redis-cli -p $PORT sadd "romanji:ス" 'su'
redis-cli -p $PORT sadd "romanji:セ" 'se'
redis-cli -p $PORT sadd "romanji:ソ" 'so'

redis-cli -p $PORT sadd "romanji:タ" 'ta'
redis-cli -p $PORT sadd "romanji:チ" 'chi'
redis-cli -p $PORT sadd "romanji:ツ" 'tsu'
redis-cli -p $PORT sadd "romanji:テ" 'te'
redis-cli -p $PORT sadd "romanji:ト" 'to'

redis-cli -p $PORT sadd "romanji:ナ" 'na'
redis-cli -p $PORT sadd "romanji:ニ" 'ni'
redis-cli -p $PORT sadd "romanji:ヌ" 'nu'
redis-cli -p $PORT sadd "romanji:ネ" 'ne'
redis-cli -p $PORT sadd "romanji:ノ" 'no'

redis-cli -p $PORT sadd "romanji:ハ" 'ha'
redis-cli -p $PORT sadd "romanji:ヒ" 'hi'
redis-cli -p $PORT sadd "romanji:フ" 'fu'
redis-cli -p $PORT sadd "romanji:ヘ" 'he'
redis-cli -p $PORT sadd "romanji:ホ" 'ho'

redis-cli -p $PORT sadd "romanji:マ" 'ma'
redis-cli -p $PORT sadd "romanji:ミ" 'mi'
redis-cli -p $PORT sadd "romanji:ム" 'mu'
redis-cli -p $PORT sadd "romanji:メ" 'me'
redis-cli -p $PORT sadd "romanji:モ" 'mo'

redis-cli -p $PORT sadd "romanji:ヤ" 'ya'
redis-cli -p $PORT sadd "romanji:ユ" 'yu'
redis-cli -p $PORT sadd "romanji:ヨ" 'yo'

redis-cli -p $PORT sadd "romanji:ラ" 'ra'
redis-cli -p $PORT sadd "romanji:リ" 'ri'
redis-cli -p $PORT sadd "romanji:ル" 'ru'
redis-cli -p $PORT sadd "romanji:レ" 're'
redis-cli -p $PORT sadd "romanji:ロ" 'ro'

redis-cli -p $PORT sadd "romanji:ワ" 'wa'
redis-cli -p $PORT sadd "romanji:ヲ" 'wo'
redis-cli -p $PORT sadd "romanji:ヲ" 'o'
redis-cli -p $PORT sadd "romanji:ン" 'n'

redis-cli -p $PORT sadd "romanji:ガ" 'ga'
redis-cli -p $PORT sadd "romanji:ギ" 'gi'
redis-cli -p $PORT sadd "romanji:グ" 'gu'
redis-cli -p $PORT sadd "romanji:ゲ" 'ge'
redis-cli -p $PORT sadd "romanji:ゴ" 'go'

redis-cli -p $PORT sadd "romanji:ザ" 'za'
redis-cli -p $PORT sadd "romanji:ジ" 'ji'
redis-cli -p $PORT sadd "romanji:ズ" 'zu'
redis-cli -p $PORT sadd "romanji:ゼ" 'ze'
redis-cli -p $PORT sadd "romanji:ゾ" 'zo'

redis-cli -p $PORT sadd "romanji:ダ" 'da'
redis-cli -p $PORT sadd "romanji:ジ" 'ji'
redis-cli -p $PORT sadd "romanji:ズ" 'zu'
redis-cli -p $PORT sadd "romanji:デ" 'de'
redis-cli -p $PORT sadd "romanji:ド" 'do'

redis-cli -p $PORT sadd "romanji:バ" 'ba'
redis-cli -p $PORT sadd "romanji:ビ" 'bi'
redis-cli -p $PORT sadd "romanji:ブ" 'bu'
redis-cli -p $PORT sadd "romanji:ベ" 'be'
redis-cli -p $PORT sadd "romanji:ボ" 'bo'

redis-cli -p $PORT sadd "romanji:パ" 'pa'
redis-cli -p $PORT sadd "romanji:ピ" 'pi'
redis-cli -p $PORT sadd "romanji:プ" 'pu'
redis-cli -p $PORT sadd "romanji:ペ" 'pe'
redis-cli -p $PORT sadd "romanji:ポ" 'po'

redis-cli -p $PORT sadd "romanji:キャ" 'kya'
redis-cli -p $PORT sadd "romanji:キュ" 'kyu'
redis-cli -p $PORT sadd "romanji:キョ" 'kyo'
redis-cli -p $PORT sadd "romanji:シャ" 'sha'
redis-cli -p $PORT sadd "romanji:シュ" 'shu'
redis-cli -p $PORT sadd "romanji:ショ" 'sho'
redis-cli -p $PORT sadd "romanji:チャ" 'cha'
redis-cli -p $PORT sadd "romanji:チュ" 'chu'
redis-cli -p $PORT sadd "romanji:チョ" 'cho'
redis-cli -p $PORT sadd "romanji:ニャ" 'nya'
redis-cli -p $PORT sadd "romanji:ニュ" 'nyu'
redis-cli -p $PORT sadd "romanji:ニョ" 'nyo'
redis-cli -p $PORT sadd "romanji:ヒャ" 'hya'
redis-cli -p $PORT sadd "romanji:ヒュ" 'hyu'
redis-cli -p $PORT sadd "romanji:ヒョ" 'hyo'
redis-cli -p $PORT sadd "romanji:ミャ" 'mya'
redis-cli -p $PORT sadd "romanji:ミュ" 'myu'
redis-cli -p $PORT sadd "romanji:ミョ" 'myo'
redis-cli -p $PORT sadd "romanji:リャ" 'rya'
redis-cli -p $PORT sadd "romanji:リュ" 'ryu'
redis-cli -p $PORT sadd "romanji:リョ" 'ryo'
redis-cli -p $PORT sadd "romanji:ギャ" 'gya'
redis-cli -p $PORT sadd "romanji:ギュ" 'gyu'
redis-cli -p $PORT sadd "romanji:ギョ" 'gyo'
redis-cli -p $PORT sadd "romanji:ジャ" 'ja'
redis-cli -p $PORT sadd "romanji:ジャ" 'jya'
redis-cli -p $PORT sadd "romanji:ジュ" 'ju'
redis-cli -p $PORT sadd "romanji:ジュ" 'jyu'
redis-cli -p $PORT sadd "romanji:ジョ" 'jo'
redis-cli -p $PORT sadd "romanji:ジョ" 'jyo'
redis-cli -p $PORT sadd "romanji:ビャ" 'bya'
redis-cli -p $PORT sadd "romanji:ビュ" 'byu'
redis-cli -p $PORT sadd "romanji:ビョ" 'byo'
redis-cli -p $PORT sadd "romanji:ピャ" 'pya'
redis-cli -p $PORT sadd "romanji:ピュ" 'pyu'
redis-cli -p $PORT sadd "romanji:ピョ" 'pyo'

redis-cli -p $PORT sadd "charset:katakana" "ア" 
redis-cli -p $PORT sadd "charset:katakana" "イ" 
redis-cli -p $PORT sadd "charset:katakana" "ウ" 
redis-cli -p $PORT sadd "charset:katakana" "エ" 
redis-cli -p $PORT sadd "charset:katakana" "オ" 

redis-cli -p $PORT sadd "charset:katakana" "カ" 
redis-cli -p $PORT sadd "charset:katakana" "キ" 
redis-cli -p $PORT sadd "charset:katakana" "ク" 
redis-cli -p $PORT sadd "charset:katakana" "ケ" 
redis-cli -p $PORT sadd "charset:katakana" "コ" 

redis-cli -p $PORT sadd "charset:katakana" "サ" 
redis-cli -p $PORT sadd "charset:katakana" "シ" 
redis-cli -p $PORT sadd "charset:katakana" "ス" 
redis-cli -p $PORT sadd "charset:katakana" "セ" 
redis-cli -p $PORT sadd "charset:katakana" "ソ" 

redis-cli -p $PORT sadd "charset:katakana" "タ" 
redis-cli -p $PORT sadd "charset:katakana" "チ" 
redis-cli -p $PORT sadd "charset:katakana" "ツ" 
redis-cli -p $PORT sadd "charset:katakana" "テ" 
redis-cli -p $PORT sadd "charset:katakana" "ト" 

redis-cli -p $PORT sadd "charset:katakana" "ナ" 
redis-cli -p $PORT sadd "charset:katakana" "ニ" 
redis-cli -p $PORT sadd "charset:katakana" "ヌ" 
redis-cli -p $PORT sadd "charset:katakana" "ネ" 
redis-cli -p $PORT sadd "charset:katakana" "ノ" 

redis-cli -p $PORT sadd "charset:katakana" "ハ" 
redis-cli -p $PORT sadd "charset:katakana" "ヒ" 
redis-cli -p $PORT sadd "charset:katakana" "フ" 
redis-cli -p $PORT sadd "charset:katakana" "ヘ" 
redis-cli -p $PORT sadd "charset:katakana" "ホ" 

redis-cli -p $PORT sadd "charset:katakana" "マ" 
redis-cli -p $PORT sadd "charset:katakana" "ミ" 
redis-cli -p $PORT sadd "charset:katakana" "ム" 
redis-cli -p $PORT sadd "charset:katakana" "メ" 
redis-cli -p $PORT sadd "charset:katakana" "モ" 

redis-cli -p $PORT sadd "charset:katakana" "ヤ" 
redis-cli -p $PORT sadd "charset:katakana" "ユ" 
redis-cli -p $PORT sadd "charset:katakana" "ヨ" 

redis-cli -p $PORT sadd "charset:katakana" "ラ" 
redis-cli -p $PORT sadd "charset:katakana" "リ" 
redis-cli -p $PORT sadd "charset:katakana" "ル" 
redis-cli -p $PORT sadd "charset:katakana" "レ" 
redis-cli -p $PORT sadd "charset:katakana" "ロ" 

redis-cli -p $PORT sadd "charset:katakana" "ワ" 
redis-cli -p $PORT sadd "charset:katakana" "ヲ" 
redis-cli -p $PORT sadd "charset:katakana" "ン" 

redis-cli -p $PORT sadd "charset:katakana" "ガ" 
redis-cli -p $PORT sadd "charset:katakana" "ギ" 
redis-cli -p $PORT sadd "charset:katakana" "グ" 
redis-cli -p $PORT sadd "charset:katakana" "ゲ" 
redis-cli -p $PORT sadd "charset:katakana" "ゴ" 

redis-cli -p $PORT sadd "charset:katakana" "ザ" 
redis-cli -p $PORT sadd "charset:katakana" "ジ" 
redis-cli -p $PORT sadd "charset:katakana" "ズ" 
redis-cli -p $PORT sadd "charset:katakana" "ゼ" 
redis-cli -p $PORT sadd "charset:katakana" "ゾ" 

redis-cli -p $PORT sadd "charset:katakana" "ダ" 
redis-cli -p $PORT sadd "charset:katakana" "ジ" 
redis-cli -p $PORT sadd "charset:katakana" "ズ" 
redis-cli -p $PORT sadd "charset:katakana" "デ" 
redis-cli -p $PORT sadd "charset:katakana" "ド" 

redis-cli -p $PORT sadd "charset:katakana" "バ" 
redis-cli -p $PORT sadd "charset:katakana" "ビ" 
redis-cli -p $PORT sadd "charset:katakana" "ブ" 
redis-cli -p $PORT sadd "charset:katakana" "ベ" 
redis-cli -p $PORT sadd "charset:katakana" "ボ" 

redis-cli -p $PORT sadd "charset:katakana" "パ" 
redis-cli -p $PORT sadd "charset:katakana" "ピ" 
redis-cli -p $PORT sadd "charset:katakana" "プ" 
redis-cli -p $PORT sadd "charset:katakana" "ペ" 
redis-cli -p $PORT sadd "charset:katakana" "ポ" 

redis-cli -p $PORT sadd "charset:katakana" "キャ"
redis-cli -p $PORT sadd "charset:katakana" "キュ"
redis-cli -p $PORT sadd "charset:katakana" "キョ"
redis-cli -p $PORT sadd "charset:katakana" "シャ"
redis-cli -p $PORT sadd "charset:katakana" "シュ"
redis-cli -p $PORT sadd "charset:katakana" "ショ"
redis-cli -p $PORT sadd "charset:katakana" "チャ"
redis-cli -p $PORT sadd "charset:katakana" "チュ"
redis-cli -p $PORT sadd "charset:katakana" "チョ"
redis-cli -p $PORT sadd "charset:katakana" "ニャ"
redis-cli -p $PORT sadd "charset:katakana" "ニュ"
redis-cli -p $PORT sadd "charset:katakana" "ニョ"
redis-cli -p $PORT sadd "charset:katakana" "ヒャ"
redis-cli -p $PORT sadd "charset:katakana" "ヒュ"
redis-cli -p $PORT sadd "charset:katakana" "ヒョ"
redis-cli -p $PORT sadd "charset:katakana" "ミャ"
redis-cli -p $PORT sadd "charset:katakana" "ミュ"
redis-cli -p $PORT sadd "charset:katakana" "ミョ"
redis-cli -p $PORT sadd "charset:katakana" "リャ"
redis-cli -p $PORT sadd "charset:katakana" "リュ"
redis-cli -p $PORT sadd "charset:katakana" "リョ"
redis-cli -p $PORT sadd "charset:katakana" "ギャ"
redis-cli -p $PORT sadd "charset:katakana" "ギュ"
redis-cli -p $PORT sadd "charset:katakana" "ギョ"
redis-cli -p $PORT sadd "charset:katakana" "ジャ"
redis-cli -p $PORT sadd "charset:katakana" "ジュ"
redis-cli -p $PORT sadd "charset:katakana" "ジョ"
redis-cli -p $PORT sadd "charset:katakana" "ビャ"
redis-cli -p $PORT sadd "charset:katakana" "ビュ"
redis-cli -p $PORT sadd "charset:katakana" "ビョ"
redis-cli -p $PORT sadd "charset:katakana" "ピャ"
redis-cli -p $PORT sadd "charset:katakana" "ピュ"
redis-cli -p $PORT sadd "charset:katakana" "ピョ"
