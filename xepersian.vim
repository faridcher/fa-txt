" (شکل ۴-۳۲a)
" figure caption شکل ۴-۳: بشود شکل 4-3:
.,$s/\vشکل [۰۱۲۳۴۵۶۷۸۹]+-[۰۱۲۳۴۵۶۷۸۹]+:/\=substitute(system("sed 'y/۰۱۲۳۴۵۶۷۸۹/0123456789/'"),'\n','','g')/gc
" or
.,$g/\vشکل [۰۱۲۳۴۵۶۷۸۹]+-[۰۱۲۳۴۵۶۷۸۹]+:/.!sed 'y/۰۱۲۳۴۵۶۷۸۹/0123456789/'

" decimal delimiter in vim and pdf
" 4.1 to 4٫1
" ۴.۱ to ۴٫۱
%s/\v([۰۱۲۳۴۵۶۷۸۹[:digit:]]+)\.([۰۱۲۳۴۵۶۷۸۹[:digit:]]+)/\1٫\2/gc
" Inline (in-text) equation numberings ۴.۱ (or 4.1) in vim look ۱.۴ in pdf, hence \lr{}
" در رابطه ۱.۴ ملاحظه می‌شود
%s/\v([۰۱۲۳۴۵۶۷۸۹[:digit:]]+)\.([۰۱۲۳۴۵۶۷۸۹[:digit:]]+)/\\lr{&}/gc

"" lr{}
" surround x$_1$=0, y$_1$=0 in lr{}
" اگر x$_1$=0 باشد
%s/\v(x|y)\$_1\$\=0/\\lr{&}/gc
" \lr{} English words
.,$s/\a\+/\\lr{&}/gc
.,$s/\v(-|\a)+/\\lr{&}/gc
" undershoot‌ها
%s/\v(\a+)‌ها/\\lr{\1}‌ها/g
