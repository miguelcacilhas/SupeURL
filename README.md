# SupeURL
Um encurtador de URLs baseado em laravel

## Ele tem atualmente:

-Registro de novas URLs

-Checagem para não repetir códigos

-Listagem das URLs cadastradas

-Redirecionamento quando se clica na URL

-Contador de cliques por link

-Um plugin para organizar as listagens por cliques (DataTables)

## Falta fazer:

-Toda a área de usuário

-Registro de usuário

## Método de abordagem:

-O usuário coloca um link de algum site, o qual passa por uma hash crc32 (retorna apenas 8 letras/digitos).

-Ambos os dados são salvos na base de dados, juntamente com o criador (por enquanto todos são anônimos) e uma quantidade de cliques 0.

-Uma lista busca todas as entradas da tabela e as expõe pro usuário.

-Ao clicar em um link encurtado (link base do site + hash) ele é processado e encontrado na tabela.

-O sistema então da increment nos cliques (+1), e redireciona o usuário o mais rápido possível.

## PS:
acredito que para ele funcionar, além do projeto e da base de dados que estão nesse repositório, você também deve configurar o arquivo ".env" para a sua base de dados atual, para ele poder funcionar.
