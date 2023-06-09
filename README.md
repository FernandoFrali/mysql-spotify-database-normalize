#  SPOTIFY SQL DATABASE NORMALIZE - CONCLUÍDO :white_check_mark:
***Este é um projeto/desafio avançado de SQL que fiz com o intuito de aprimorar minhas skills com comandos SQL ao normalizar tabelas do banco de dados do Spotify.***

Neste projeto, normalizei um banco de dados separando por tabelas e colunas interligadas com Primary e Foreign Keys, isso no intuito de tornar o banco de dados mais escalável. Além de fazer diversas queries avançadas a cada desafio no intuito de buscar e filtrar essas informações de forma organizada.

Projeto concluído em: ≅ 4hrs e 40min
</br>

## Desafio:
### Você recebeu uma planilha não normalizada semelhante ao que poderia ser uma versão simplificada do banco de dados do Spotify. O trabalho consistirá de duas partes:

1. Normalizar essa planilha, criar as tabelas no seu banco de dados local e populá-lo;

2. Realizar os desafios no seu banco normalizado e populado.

## Regras:

⚠️ **AVISO IMPORTANTE:** Você deve escrever sua query manualmente, com o gerador automático de queries do Workbench o avaliador não funcionará corretamente!

Antes de tudo, você deverá modelar e normalizar essas tabelas para a **3° Forma Normal**.

Monte quantas planilhas e tabelas forem necessárias para criar essa versão normalizada desde que você siga as regras de negócio. Não é necessário criar o código SQL neste momento.

> 💡 **Dica**: Embora não seja necessário, é recomendado que você crie suas planilhas na sequência 1ª -> 2ª -> 3ª Forma Normal

<details>
<summary>👩🏼‍💻 Como desenvolver</summary><br>

Algumas coisas devem seguir um padrão pré-estabelecido para que os testes de correção funcionem adequadamente:

1. Para cada desafio, crie um arquivo SQL e inclua sua solução nele.

   - **Todos** os desafios que pedirem para criar uma query **devem** possuir no seu arquivo `.sql` correspondente **somente** a query solicitada.

2. Crie o arquivo **na pasta `challenges` do projeto** chamado `desafioN.sql`, em que N é o número do desafio (exemplo: `desafio3.sql`).

   - 💡**Dica**: Use o seguinte comando para gerar os arquivos:

      ```bash
      touch challenges/desafio{1..11}.sql
      ```

3. Ao modelar o banco de dados no [desafio 1](#desafio-1) ou [desafio 10](#desafio-10):

   - Quando for preciso que uma `coluna_a` referencie uma coluna `coluna_b` em outra tabela, é **necessário** que na `coluna_a` haja restrição de foreign key e que `coluna_b` seja uma primary key;

   - É preciso preencher também os arquivos de configurações `desafio1.json` e `desafio10.json` *também na pasta `challenges` do projeto*.

4. Os arquivos dos desafios de consultas (desafios 2 a 9, 11 a 13) devem:

   - Conter apenas a query SQL do desafio resolvido, pois o retorno desta única query é o que será avaliado.

5. Atente-se a detalhes de digitação em seu código. Qualquer diferença em nomes, apelidos, ou CAIXA ALTA e caixa baixa podem invalidar suas respostas.
   - **Não se esqueça de incluir o ponto e vírgula (";")** no final de suas queries.

6. Faça isso até finalizar todos os desafios e depois siga as instruções de como entregar o projeto na seção **Git e Github** na [FAQ](./FAQ.md#git-e-github).

7. Para entregar o seu projeto você deverá criar um *Pull Request* neste repositório. Este *Pull Request* deverá conter tanto o arquivo de configuração `desafio1.json` quanto os arquivos `desafio1.sql`, `desafio2.sql` e assim por diante até o `desafio9.sql`, que conterão seu código `SQL` de cada desafio, respectivamente.

   - **⚠️ É importante que seus arquivos tenham exatamente estes nomes! ⚠️**

</details>

<details>
<summary>🎲 Planilha SpotifyClone</summary><br />

Abaixo você pode visualizar e baixar uma planilha com as tabelas que deverão ser normalizadas:

> **Observação:** O banco de dados real do Spotify é muito mais completo e complexo que o mostrado abaixo. No entanto, use APENAS as informações passadas e solicitadas aqui. Não crie dados que não foram solicitados.

[Faça o download dela aqui](./SpotifyClone-Non-NormalizedTable.xlsx)

<details>
<summary>🖥️ Software para acessar planilhas</summary><br />

Como o VS Code não oferece suporte nativo para abrir planilhas, você precisa ter algum software especifico para isso, aqui deixamos algumas sugestões:

- [LibreOffice Calc](https://www.libreoffice.org/download/download/) para distros Linux;
- [Numbers](https://www.apple.com/br/numbers/) para Mac OS;
- [Google planilhas](https://docs.google.com/spreadsheets) para utilizar no browser;
- Extensão para o VS Code como a [Excel Viewer](https://marketplace.visualstudio.com/items?itemName=GrapeCity.gc-excelviewer);

> Obs. Em alguns SOs é de costume vir instalado algum programa para manipular planilhas.
</details>
</details>

<details>
<summary>📖 Regras de negócio do banco de dados</summary><br />

Seu banco de dados deve seguir as regras de negócio e ser capaz de recuperar:

- Informações sobre quais planos estão disponíveis e seus detalhes;
  - Cada pessoa usuária pode possuir apenas um plano.

- Informações sobre todas as pessoas artistas;
  - Uma pessoa artista pode ter vários álbuns;
  - Uma pessoa artista pode ser seguida por várias pessoas usuárias.

- Informações sobre todos os álbuns de cada artista;
  - Para fins deste projeto, considere que cada álbum possui apenas uma pessoa artista como principal;
  - Cada álbum possui várias canções.

- Informações sobre todas as canções de cada álbum;
  - Para fins deste projeto, considere que cada canção está contida em apenas um álbum.

- Informações sobre todas as pessoas usuárias, seus planos, seu histórico de reprodução e pessoas artistas seguidas.
  - Uma pessoa usuária pode possuir apenas um plano;
  - Cada música do histórico de reprodução pode aparecer uma única vez por pessoa (para simplificar, considere que o objetivo do histórico é saber **quais** canções já foram reproduzidas e **não quantas vezes** foram reproduzidas);
  - Uma pessoa usuária pode seguir várias pessoas artistas, mas cada pessoa artista pode ser seguida apenas uma vez por pessoa usuária.

</details>

</br>

## Desafios:

## Desafio 1

### Parte 1 - Normalize as tabelas da planilha SpotifyClone


### Parte 2 - Após a normalização, crie as tabelas no banco de dados

A planilha acima foi normalizada? Ótimo! Agora siga com os passos abaixo:

- Crie um banco com o nome de **`SpotifyClone`**.

- Providencie as queries necessárias para criar tabelas normalizadas que atendam às regras de negócio descritas anteriormente;

- Providencie as queries necessárias para popular as tabelas do banco de dados de acordo com as dados da planilha fornecida anteriormente;

- Ajuste o arquivo de configurações `desafio1.json`, que mapeará em qual tabela e coluna se encontram as informações necessárias para a avaliação automatizada deste desafio.

  <details>
  <summary>👇 As configurações devem possuir o seguinte formato</summary><br />

  ```json
  {
    "tabela_pessoas_usuarias": "nome-da-tabela-de-pessoas-usuárias",
    "coluna_pessoas_usuarias": "nome-da-coluna-da-pessoa-usuária",
    "tabela_plano": "nome-da-tabela-do-plano",
    "coluna_plano": "nome-da-coluna-do-plano",
    "tabela_historico_de_reproducoes": "nome-da-tabela-do-histórico-de-reproduções",
    "coluna_historico_de_reproducoes": "nome-da-coluna-da-canção",
    "tabela_seguindo_artistas": "nome-da-tabela-de-seguidores-dos-artistas",
    "coluna_seguindo_artistas": "nome-da-coluna-da-artista",
    "tabela_artista": "nome-da-tabela-de-artistas",
    "coluna_artista": "nome-da-coluna-da-pessoa-artista",
    "tabela_album": "nome-da-tabela-de-álbuns",
    "coluna_album": "nome-da--coluna-do-álbum",
    "tabela_cancoes": "nome-da-tabela-de-canções",
    "coluna_cancoes": "nome-da-coluna-da-canção"
  }
  ```

  Essa configuração deve ser feita baseada no seu banco de dados **após a normalização**. Ou seja, se você criou uma tabela chamada `users` que possui a coluna `name`, você substituiria `"coluna_pessoa_usuaria"` e `"tabela_pessoa_usuaria"` da seguinte forma:

  ```json
  {
    "tabela_pessoa_usuaria": "users",
    "coluna_pessoa_usuaria": "name",
    ...
  }
  ```

</details>

- Salve as queries criadas no arquivo `desafio1.sql`.
  <details>
  <summary> 👇 Seu código deverá ser similar ao seguinte</summary><br />

    ```sql
    DROP DATABASE IF EXISTS SpotifyClone;

    CREATE DATABASE SpotifyClone;

    CREATE TABLE SpotifyClone.tabela1(
        coluna1 tipo restricoes,
        coluna2 tipo restricoes,
        colunaN tipo restricoes,
    ) engine = InnoDB;

    CREATE TABLE SpotifyClone.tabela2(
        coluna1 tipo restricoes,
        coluna2 tipo restricoes,
        colunaN tipo restricoes,
    ) engine = InnoDB;

    INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
    VALUES
      ('exemplo de dados 1', 'exemplo de dados A'),
      ('exemplo de dados 2', 'exemplo de dados B'),
      ('exemplo de dados 3', 'exemplo de dados C');

    INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
    VALUES
      ('exemplo de dados 1', 'exemplo de dados X'),
      ('exemplo de dados 2', 'exemplo de dados Y');
    ```

  </details>


<details>
<summary>☑️ O que será verificado</summary><br />

- Será validado se os planos estão na tabela normalizada.

- Será validado se o histórico de reprodução está na tabela normalizada.

- Será validado se as informações sobre pessoas seguindo artistas estão na tabela normalizada.

- Será validado se os álbuns estão na tabela normalizada.

- Será validado se as canções estão na tabela normalizada.

- Será validado se as informações sobre pessoas usuárias estão na tabela normalizada.

- Será validado se as informações sobre artistas estão na tabela normalizada.

  ⚠️ Note que uma vez executado um teste, a sua base de dados `SpotifyClone` **será dropada**. Logo, **se atente** a salvar seu progresso nos arquivos de desafio! ⚠️

</details>

---

## Desafio 2

Crie uma `QUERY` que exiba três colunas:

1. A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "**cancoes**".

2. A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "**artistas**".

3. A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "**albuns**".

✨ Dica: Considerando que a tabela está normalizada, você pode usar as chaves estrangeiras para juntar as tabelas, ou usar *sub-queries* de forma que seja possível extrair o resultado

<details>
  <summary>➕ Informações complementares</summary><br />

Sua `QUERY` deve retornar a seguinte informação:

| cancoes | artistas | albuns |
|---------|----------|--------|
| 10      | 6        | 8      |

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `cancoes`, `artistas` e `albuns`.

</details>

---

## Desafio 3

Crie uma `QUERY` que deverá ter apenas três colunas:

1. A primeira coluna deve possuir o alias "**pessoa_usuaria**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve possuir o alias "**musicas_ouvidas**" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.

3. A terceira coluna deve possuir o alias "**total_minutos**" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.

✨ Dica: Consulte o conteúdo do dia de `Funções mais usadas no SQL`.

<details>
  <summary>➕ Informações complementares</summary><br />

Sua `QUERY` deve retornar a seguinte informação:

| pessoa_usuaria        | musicas_ouvidas | total_minutos |
|-----------------------|-----------------|---------------|
| Ada Lovelace          | 2               | 7.82          |
| Barbara Liskov        | 3               | 12.27         |
| Bell Hooks            | 1               | 3.38          |
| Christopher Alexander | 1               | 3.38          |
| Jorge Amado           | 1               | 1.93          |
| Judith Butler         | 1               | 4.07          |
| Martin Fowler         | 1               | 4.45          |
| Paulo Freire          | 2               | 8.10          |
| Robert Cecil Martin   | 2               | 5.12          |
| Sandi Metz            | 2               | 6.98          |

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `pessoa_usuaria`, `musicas_ouvidas` e `total_minutos`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

---

## Desafio 4

Crie uma `QUERY` que deve mostrar as pessoas usuárias que estavam ativas **a partir do ano de 2021**, se baseando na data mais recente no histórico de reprodução.

1. A primeira coluna deve possuir o alias "**pessoa_usuaria**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve ter o alias "**status_pessoa_usuaria**" e exibir se a pessoa usuária está ativa ou inativa.

O resultado deve estar ordenado em ordem alfabética.

✨ Dica: Consulte o conteúdo do dia de `Funções mais usadas no SQL`.

<details>
  <summary>➕ Informações complementares</summary><br />

Sua `QUERY` deve retornar a seguinte informação:

| pessoa_usuaria        | status_pessoa_usuaria |
|-----------------------|-----------------------|
| Ada Lovelace          | Inativa               |
| Barbara Liskov        | Ativa                 |
| Bell Hooks            | Inativa               |
| Christopher Alexander | Inativa               |
| Jorge Amado           | Inativa               |
| Judith Butler         | Ativa                 |
| Martin Fowler         | Ativa                 |
| Paulo Freire          | Inativa               |
| Robert Cecil Martin   | Ativa                 |
| Sandi Metz            | Ativa                 |

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `pessoa_usuaria` e `status_pessoa_usuaria`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

---

## Desafio 5

Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma `QUERY` que possua duas colunas:

1. A primeira coluna deve possuir o alias "**cancao**" e exibir o nome da canção.

2. A segunda coluna deve possuir o alias "**reproducoes**" e exibir a quantidade de pessoas que já escutaram a canção em questão.

Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

<details>
  <summary>➕ Informações complementares</summary><br />

Sua `QUERY` deve retornar a seguinte informação:

| cancao         | reproducoes |
|----------------|-------------|
| Feeling Good   | 3           |
| Samba em Paris | 3           |

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `cancao` e `reproducoes`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

---

## Desafio 6

Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma `QUERY` que deve exibir quatro dados:

1. A primeira coluna deve ter o alias "**faturamento_minimo**" e exibir o menor valor de plano existente para uma pessoa usuária.

2. A segunda coluna deve ter o alias "**faturamento_maximo**" e exibir o maior valor de plano existente para uma pessoa usuária.

3. A terceira coluna deve ter o alias "**faturamento_medio**" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.

4. Por fim, a quarta coluna deve ter o alias "**faturamento_total**" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.

Para cada um desses dados, por se tratarem de valores monetários, deve-se arredondar o faturamento usando apenas duas casas decimais.

✨ Dica: O `ROUND` pode ser útil aqui, mas não vai criar casas decimais extras, se precisar disto busque uma função que vai fazer essa formatação.

<details>
  <summary>➕ Informações complementares</summary><br />

Sua `QUERY` deve retornar a seguinte informação:

| faturamento_minimo | faturamento_maximo | faturamento_medio | faturamento_total |
|--------------------|--------------------|-------------------|-------------------|
| 0.00               | 7.99               | 5.69              | 56.92             |

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `faturamento_minimo`, `faturamento_maximo`, `faturamento_medio` e `faturamento_total`.

</details>

---

## Desafio 7

Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, ordenada pela quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma `QUERY` com as seguintes colunas:

1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "**artista**".

2. A segunda coluna deve exibir o nome do álbum, com o alias "**album**".

3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "**pessoas_seguidoras**".

Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso existam artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.

<details>
  <summary>➕ Informações complementares</summary><br />

Sua `QUERY` deve retornar a seguinte informação:

| artista           | album                | pessoas_seguidoras |
|-------------------|----------------------|--------------------|
| Beyoncé           | Renaissance          | 3                  |
| Elis Regina       | Falso Brilhante      | 3                  |
| Elis Regina       | Vento de Maio        | 3                  |
| Nina Simone       | I Put A Spell On You | 3                  |
| Queen             | Hot Space            | 3                  |
| Queen             | Jazz                 | 3                  |
| Baco Exu do Blues | QVVJFA?              | 1                  |
| Blind Guardian    | Somewhere Far Beyond | 1                  |

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `artista`, `album` e `pessoas_seguidoras`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

---

## Desafio 8

Mostre uma relação dos álbuns produzidos por uma pessoa artista específica, neste caso `"Elis Regina"`.
Para isto crie uma `QUERY` que o retorno deve exibir as seguintes colunas:

1. O nome da pessoa artista, com o alias "**artista**".

2. O nome do álbum, com o alias "**album**".

Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

<details>
  <summary>➕ Informações complementares</summary><br />

Sua `QUERY` deve retornar a seguinte informação:

| artista     | album           |
|-------------|-----------------|
| Elis Regina | Falso Brilhante |
| Elis Regina | Vento de Maio   |

O que será verificado:

- Será validado se a `QUERY` retorna a coluna `artista` contendo o nome da pessoa artista e a coluna `album` contendo o nome do álbum.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

---

## Desafio 9

Crie uma `QUERY` que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico da usuária `"Barbara Liskov"` e a consulta deve retornar a seguinte coluna:

1. O valor da quantidade, com o alias "**musicas_no_historico**".

<details>
  <summary>➕ Informações complementares</summary><br />

Sua `QUERY` deve retornar a seguinte informação:

| musicas_no_historico |
|----------------------|
| 3                    |

O que será verificado:

- Será validado se a `QUERY` retorna a quantidade correta de canções presentes no histórico de reprodução da pessoa especificada.

</details>

---

## Desafios 10 e 11 (opcionais / bônus)

Desafios 10 e 11 são a respeito de normalização de uma nova tabela (favsongs) e não contarão para a avaliação do projeto. Caso mesmo assim opte por fazê-los, consulte a página do projeto!
