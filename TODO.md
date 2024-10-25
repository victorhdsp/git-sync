# Git sync

## Code Maker
[x] nomear de code_maker
[x] receber o nome do projeto
[x] receber o clone da "vogsphere"
[x] receber o clone do "github"
[x] pegar o endereço da pasta atual
[x] crair código de starter baseado no endereço da pasta
[x] criar código de clear_dir baseado no endereço da pasta
[x] criar código do clone_dir baseado no endereço da pasta e no arquivo de ".cloneignore".
[] criar código do commit baseado no endereço da pasta
[] criar código da norminette baseado no endereço da pasta
[] criar código do push baseado no endereço da pasta

## Starter
[x] nomear starter
[x] clonar projeto da vogsphere com nome vogsphere
[x] clonar projeto do github com nome github

## Clear Dir
[x] nomear clear_dir
[x] limpar o repositório da "vogsphere"

## Clone Dir
[x] nomear clone_dir
[x] enviar somente os arquivos permitidos pelo ".cloneignore"

## Commit
[x] nomear de commit
[x] passar o evento git "add ."
[x] passar o evento git "commit -m 'update'"

## Norminette
[] nomear de norminette
[] fazer verificação da norminette.
    [] se tiver algum erro passar o "correct".
    [] fazer verificação da norminette.
        [] se tiver algum erro retornar um erro.

## Push
[] nomear de push
[] chamar norminette
[] passar o evento git "push"

# Eventos

## Pre-commit
[] chamar a função "clear_dir"
[] chamar a função "clone_dir"