# クリップボード有効化
set clipboard+=unnamed
# 文字コードをUFT-8に設定
set fenc=utf-8
# 編集中のファイルが変更されたら自動で読み直す
set autoread
# バッファが編集中でもその他のファイルを開けるように
set hidden

# 行番号を表示
set number
# 現在の行を強調表示
set cursorline
# ハイライト設定
hi CursorLineNr term=bold   cterm=NONE ctermfg=white ctermbg=NONE
# 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

# Tab文字を半角スペースにする
set expandtab
# 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
# 行頭でのTab文字の表示幅
set shiftwidth=2