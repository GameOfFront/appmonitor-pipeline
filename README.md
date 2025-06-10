# appmonitor-pipeline
Repositório do Luiz Carlos Ardovino para o AT de pipeline.


# AppMonitor Pipeline

Este projeto tem como objetivo a prática de integração contínua (CI) utilizando GitHub Actions para monitoramento de aplicações.

## Papel do Git na entrega contínua

O Git permite o versionamento eficiente de código, possibilitando entregas incrementais e rastreáveis. Isso é essencial em pipelines CI/CD, onde cada mudança pode ser validada de forma automatizada.

## Importância de branches e tags

- **Branches** permitem o desenvolvimento isolado de funcionalidades, mantendo a estabilidade da branch principal.
- **Tags** registram pontos importantes no histórico do projeto, como versões de produção.


## Uso de variáveis, secrets e contextos no GitHub Actions

No GitHub Actions, usamos três formas distintas de passar informações para os workflows:

### 1. `env`
São variáveis de ambiente definidas no nível do workflow, job ou step. São úteis para configurar valores temporários e acessíveis diretamente via `$VARIAVEL`.

Exemplo:
```yaml
env:
  APP_ENV: ${{ vars.APP_ENV }}
