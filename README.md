# RAIZ — Gestão e Continuidade Rural

## Versão preparada para apresentação sem internet

Esta pasta contém o site e seus recursos locais. A interface, os módulos e os cadastros demonstrativos funcionam sem conexão com a internet. Nenhuma fonte, imagem ou biblioteca externa é necessária para abrir a interface.

### Como abrir no Windows

1. Extraia o ZIP inteiro para uma pasta no computador ou pendrive.
2. Abra a pasta `raiz_work`.
3. Dê dois cliques em `INICIAR_RAIZ.bat`.
4. Se o computador tiver Python, o arquivo inicia um servidor local e abre `http://localhost:8080`.
5. Se não tiver Python, o arquivo tenta abrir `index.html` diretamente no navegador.
6. Para encerrar o servidor local, volte à janela preta e pressione `Ctrl + C`.

**Alternativa recomendada:** abra a pasta no Visual Studio Code e use a extensão Live Server para executar `index.html`.

### Preparar os dados da apresentação

1. Clique em **Acessar sistema**.
2. Informe um nome demonstrativo e escolha o perfil.
3. Entre em **Configurações**.
4. Clique em **Carregar exemplos**.
5. O sistema preencherá os módulos com dados fictícios de uma propriedade rural, lançamentos financeiros, culturas, familiares, tarefas e etapas sucessórias.

Atenção: carregar os exemplos substitui os registros que já estejam salvos no navegador. Use apenas os dados fictícios na apresentação.

### O que funciona offline

- Site institucional e navegação entre páginas.
- Painel de gestão e módulos do sistema.
- Cadastros, edição e exclusão de registros.
- Foto da propriedade (selecionada no próprio computador).
- Pesquisa, relatórios, impressão e exportação CSV/JSON.
- Persistência local no navegador utilizado.

### Limitações offline

- O login é demonstrativo, não é autenticação segura.
- Os dados ficam no navegador e computador usados na apresentação; não são sincronizados.
- O Supabase e os recursos que dependem de servidor não funcionam sem internet.
- Não utilize dados pessoais, documentos reais ou informações financeiras confidenciais no modo local.
- Para maior confiabilidade, execute pelo servidor local (Python ou Live Server), em vez de abrir o HTML diretamente.

## Publicação online no GitHub

A versão continua sendo um site estático e pode ser publicada no GitHub Pages, Netlify ou Vercel. O modo offline não substitui a configuração do backend.

O projeto inclui `sql/supabase.sql` e `js/config.js` como ponto de partida, mas a integração completa dos cadastros com Supabase ainda precisa ser implementada e testada antes de uso real. O README original descrevia essa limitação e ela permanece válida.

Para publicação:
1. Envie o conteúdo da pasta do projeto ao repositório GitHub.
2. Configure a hospedagem estática.
3. Para recursos online, configure o Supabase e implemente autenticação, consultas, políticas RLS e armazenamento privado.
4. Nunca coloque a chave `service_role` no código do navegador.

## Estrutura

- `index.html`: página principal.
- `css/styles.css`: estilos.
- `js/app.js`: navegação, módulos e armazenamento local.
- `js/config.js`: configuração opcional do Supabase.
- `assets/logo-raiz.png`: identidade visual.
- `sql/supabase.sql`: estrutura inicial do banco.
- `INICIAR_RAIZ.bat`: inicializador para Windows.
