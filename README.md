# trtext-run

TRTEXT runner with DOSVAXJ3

TRTEXT を DOSVAXJ3 上で動かす batch です。PowerShell script を書く時間がなかったので、昔ながらの batch で書いています。

GPLv2 に従います。

# 使い方

trtext-run.bat を実行すると、以下の通り mount します。

* C: … trtext-run.bat が存在する directory
* D: Scoop apps の directory
* E: TRTEXT.EXE が存在する directory

例えば、事前に `scoop install trtext-eng` として英語辞書を導入済みであれば、以下の手順で利用できます。

```
d:
cd trtext-eng
cd current
e:trtext d:eng
```
