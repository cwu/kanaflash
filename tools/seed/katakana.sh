#!/bin/sh
PORT=$1

if [ "$PORT" = "" ]; then
  PORT=6379
fi

redis-cli -p $PORT sadd "romaji:ア" 'a'
redis-cli -p $PORT sadd "romaji:イ" 'i'
redis-cli -p $PORT sadd "romaji:ウ" 'u'
redis-cli -p $PORT sadd "romaji:エ" 'e'
redis-cli -p $PORT sadd "romaji:オ" 'o'

redis-cli -p $PORT sadd "romaji:カ" 'ka'
redis-cli -p $PORT sadd "romaji:キ" 'ki'
redis-cli -p $PORT sadd "romaji:ク" 'ku'
redis-cli -p $PORT sadd "romaji:ケ" 'ke'
redis-cli -p $PORT sadd "romaji:コ" 'ko'

redis-cli -p $PORT sadd "romaji:サ" 'sa'
redis-cli -p $PORT sadd "romaji:シ" 'shi'
redis-cli -p $PORT sadd "romaji:ス" 'su'
redis-cli -p $PORT sadd "romaji:セ" 'se'
redis-cli -p $PORT sadd "romaji:ソ" 'so'

redis-cli -p $PORT sadd "romaji:タ" 'ta'
redis-cli -p $PORT sadd "romaji:チ" 'chi'
redis-cli -p $PORT sadd "romaji:ツ" 'tsu'
redis-cli -p $PORT sadd "romaji:テ" 'te'
redis-cli -p $PORT sadd "romaji:ト" 'to'

redis-cli -p $PORT sadd "romaji:ナ" 'na'
redis-cli -p $PORT sadd "romaji:ニ" 'ni'
redis-cli -p $PORT sadd "romaji:ヌ" 'nu'
redis-cli -p $PORT sadd "romaji:ネ" 'ne'
redis-cli -p $PORT sadd "romaji:ノ" 'no'

redis-cli -p $PORT sadd "romaji:ハ" 'ha'
redis-cli -p $PORT sadd "romaji:ヒ" 'hi'
redis-cli -p $PORT sadd "romaji:フ" 'fu'
redis-cli -p $PORT sadd "romaji:ヘ" 'he'
redis-cli -p $PORT sadd "romaji:ホ" 'ho'

redis-cli -p $PORT sadd "romaji:マ" 'ma'
redis-cli -p $PORT sadd "romaji:ミ" 'mi'
redis-cli -p $PORT sadd "romaji:ム" 'mu'
redis-cli -p $PORT sadd "romaji:メ" 'me'
redis-cli -p $PORT sadd "romaji:モ" 'mo'

redis-cli -p $PORT sadd "romaji:ヤ" 'ya'
redis-cli -p $PORT sadd "romaji:ユ" 'yu'
redis-cli -p $PORT sadd "romaji:ヨ" 'yo'

redis-cli -p $PORT sadd "romaji:ラ" 'ra'
redis-cli -p $PORT sadd "romaji:リ" 'ri'
redis-cli -p $PORT sadd "romaji:ル" 'ru'
redis-cli -p $PORT sadd "romaji:レ" 're'
redis-cli -p $PORT sadd "romaji:ロ" 'ro'

redis-cli -p $PORT sadd "romaji:ワ" 'wa'
redis-cli -p $PORT sadd "romaji:ヲ" 'wo'
redis-cli -p $PORT sadd "romaji:ヲ" 'o'
redis-cli -p $PORT sadd "romaji:ン" 'n'

redis-cli -p $PORT sadd "romaji:ガ" 'ga'
redis-cli -p $PORT sadd "romaji:ギ" 'gi'
redis-cli -p $PORT sadd "romaji:グ" 'gu'
redis-cli -p $PORT sadd "romaji:ゲ" 'ge'
redis-cli -p $PORT sadd "romaji:ゴ" 'go'

redis-cli -p $PORT sadd "romaji:ザ" 'za'
redis-cli -p $PORT sadd "romaji:ジ" 'ji'
redis-cli -p $PORT sadd "romaji:ズ" 'zu'
redis-cli -p $PORT sadd "romaji:ゼ" 'ze'
redis-cli -p $PORT sadd "romaji:ゾ" 'zo'

redis-cli -p $PORT sadd "romaji:ダ" 'da'
redis-cli -p $PORT sadd "romaji:ジ" 'ji'
redis-cli -p $PORT sadd "romaji:ズ" 'zu'
redis-cli -p $PORT sadd "romaji:デ" 'de'
redis-cli -p $PORT sadd "romaji:ド" 'do'

redis-cli -p $PORT sadd "romaji:バ" 'ba'
redis-cli -p $PORT sadd "romaji:ビ" 'bi'
redis-cli -p $PORT sadd "romaji:ブ" 'bu'
redis-cli -p $PORT sadd "romaji:ベ" 'be'
redis-cli -p $PORT sadd "romaji:ボ" 'bo'

redis-cli -p $PORT sadd "romaji:パ" 'pa'
redis-cli -p $PORT sadd "romaji:ピ" 'pi'
redis-cli -p $PORT sadd "romaji:プ" 'pu'
redis-cli -p $PORT sadd "romaji:ペ" 'pe'
redis-cli -p $PORT sadd "romaji:ポ" 'po'

redis-cli -p $PORT sadd "romaji:キャ" 'kya'
redis-cli -p $PORT sadd "romaji:キュ" 'kyu'
redis-cli -p $PORT sadd "romaji:キョ" 'kyo'
redis-cli -p $PORT sadd "romaji:シャ" 'sha'
redis-cli -p $PORT sadd "romaji:シュ" 'shu'
redis-cli -p $PORT sadd "romaji:ショ" 'sho'
redis-cli -p $PORT sadd "romaji:チャ" 'cha'
redis-cli -p $PORT sadd "romaji:チュ" 'chu'
redis-cli -p $PORT sadd "romaji:チョ" 'cho'
redis-cli -p $PORT sadd "romaji:ニャ" 'nya'
redis-cli -p $PORT sadd "romaji:ニュ" 'nyu'
redis-cli -p $PORT sadd "romaji:ニョ" 'nyo'
redis-cli -p $PORT sadd "romaji:ヒャ" 'hya'
redis-cli -p $PORT sadd "romaji:ヒュ" 'hyu'
redis-cli -p $PORT sadd "romaji:ヒョ" 'hyo'
redis-cli -p $PORT sadd "romaji:ミャ" 'mya'
redis-cli -p $PORT sadd "romaji:ミュ" 'myu'
redis-cli -p $PORT sadd "romaji:ミョ" 'myo'
redis-cli -p $PORT sadd "romaji:リャ" 'rya'
redis-cli -p $PORT sadd "romaji:リュ" 'ryu'
redis-cli -p $PORT sadd "romaji:リョ" 'ryo'
redis-cli -p $PORT sadd "romaji:ギャ" 'gya'
redis-cli -p $PORT sadd "romaji:ギュ" 'gyu'
redis-cli -p $PORT sadd "romaji:ギョ" 'gyo'
redis-cli -p $PORT sadd "romaji:ジャ" 'ja'
redis-cli -p $PORT sadd "romaji:ジャ" 'jya'
redis-cli -p $PORT sadd "romaji:ジュ" 'ju'
redis-cli -p $PORT sadd "romaji:ジュ" 'jyu'
redis-cli -p $PORT sadd "romaji:ジョ" 'jo'
redis-cli -p $PORT sadd "romaji:ジョ" 'jyo'
redis-cli -p $PORT sadd "romaji:ビャ" 'bya'
redis-cli -p $PORT sadd "romaji:ビュ" 'byu'
redis-cli -p $PORT sadd "romaji:ビョ" 'byo'
redis-cli -p $PORT sadd "romaji:ピャ" 'pya'
redis-cli -p $PORT sadd "romaji:ピュ" 'pyu'
redis-cli -p $PORT sadd "romaji:ピョ" 'pyo'

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
