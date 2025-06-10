![CI](https://img.shields.io/github/actions/workflow/status/GameOfFront/appmonitor-pipeline/ci.yml?branch=main&label=CI%20Status)

---

## 📊 Logs e Summaries no GitHub Actions

Durante a execução do workflow, o GitHub Actions registra logs detalhados de cada etapa, permitindo depuração precisa em caso de falhas.

### 📁 Logs com Debug

- Com a variável `ACTIONS_STEP_DEBUG=true`, é possível obter informações internas de execução.
- As mensagens `::warning::`, `::error::` e `::notice::` facilitam alertas no log sem quebrar a pipeline.

### 🧾 Summaries

- O job `package` adiciona um **resumo Markdown** ao final da execução.
- Isso permite visualizar o ambiente (`runner.os`), branch (`github.ref_name`) e link direto para artefatos.

Essas práticas são essenciais para **monitoramento, auditoria e manutenção saudável de pipelines CI/CD.**



# appmonitor-pipeline
Repositório do Luiz Carlos Ardovino para o AT de pipeline.


# AppMonitor Pipeline

Este repositório simula a construção de um pipeline de integração contínua (CI) para monitoramento de aplicações web. O objetivo é automatizar tarefas como validação de scripts, testes simulados, empacotamento de artefatos e uso de variáveis sensíveis.

---

## Git na entrega contínua

O Git é a base do controle de versão moderna, permitindo:

- Colaboração segura entre times
- Histórico rastreável de mudanças
- Facilidade na automação de processos via CI/CD

Em pipelines como este, o Git viabiliza o gatilho automático de workflows a partir de ações como *push* ou *pull requests*.

---

## Importância de Branches e Tags

- **Branches** permitem o desenvolvimento paralelo sem afetar a versão principal do projeto (`main`). Por exemplo: `ci/setup`, `feature/logging`, etc.
- **Tags** marcam versões específicas e imutáveis no histórico, facilitando lançamentos, como `v0.1.0`.

---

## Scripts e Workflows

O projeto utiliza GitHub Actions com os seguintes workflows:

- `ci.yml`: pipeline com três jobs sequenciais (`validate`, `test`, `package`)
- `run-monitor.yml`: demonstração de uso de variáveis (`env`, `vars`, `secrets`)

---

## Variáveis, Secrets e Contextos no GitHub Actions

GitHub Actions oferece três formas principais de configurar dados para execução de workflows:

### `env`
São variáveis de ambiente declaradas no escopo de jobs ou steps. Usadas com `$VARIAVEL` em scripts.

**Exemplo:**
```yaml
env:
  APP_ENV: dev



