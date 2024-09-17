curl "https://esaj.tjsp.jus.br/cpopg/show.do?processo.codigo=680004NSB0000&processo.foro=224&processo.numero=3031304-22.2013.8.26.0224" > processo.html

cat processo.html | grep -A 10 descricaoMovimentacao | head -n 10 | grep href
