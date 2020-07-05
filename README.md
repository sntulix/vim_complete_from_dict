# vim_complete_from_dict
これはvim向けの単語補完のユーザ関数で、単語をWord1Word2Word3といったいくつか単語を隙間なく連結させている命名規則に対応した補完の関数です。
プラグインとは別の辞書ファイルを読み込んで、C-x C-uで補完の候補が表示され、選んだ単語で補完がされます。

# 例、3dcg.dictを使った場合

* IndexBuffer, VertexBuffer, ConstantBuffer ... これらは毎回Bufferと後ろに書くのですが、前の単語まで書いたら、C-x C-uで後ろの単語が補完されます。

# ※まだ完全ではありません。

* C-x C-uせず、自動で補完を出す方法とそれがしたいのかどうか
