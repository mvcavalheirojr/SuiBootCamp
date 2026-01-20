# Aula 3: Criando meu primeiro módulo Move

**Vídeo**: [Assistir Online](https://drive.google.com/file/d/136rN5KIhGJGJ3AxtElB97rTwX20pryTl/view?usp=sharing)

## Anotações
<!-- Adicione suas anotações aqui -->

### 1. Introdução
Foco em entender a sintaxe e particularidades do Move executando localmente (sem rede ainda).
- **Módulos**: Unidade principal de código. Contém structs e funções. Semelhante a bibliotecas.
- **Compilação**: `sui move build` para validar lógica antes do deploy.

### 2. Tipos Primitivos
Blocos fundamentais da linguagem:
- **Inteiros**: `u8`, `u16`, `u32`, `u64`, `u128`, `u256`. (Sem sinal, não aceita negativos).
- **Bool**: `true`, `false`.
- **Address**: Identificador de 32 bytes (`0x...`). Não permite aritmética direta.

### 3. Variáveis e Referências
- **Variáveis**: `let x = 10;`. Escopo local.
- **Mutabilidade**: `let mut y = 20;`.
- **Referências**:
  - `&T`: Leitura (Imutável).
  - `&mut T`: Leitura e Escrita (Mutável).
- **Regra de Ownership**: Não pode haver referências mutáveis e imutáveis ao mesmo tempo.

### 4. Fluxo de Controle
- **Condicionais**: `if (cond) { ... } else { ... }`.
- **Loops**: `while`, `loop`, `break`, `continue`.
- **Abort/Assert**:
  - `abort <code>`: Para execução e reverte transação.
  - `assert!(cond, code)`: Verifica condição, se falhar executa abort. Ex: `assert!(saldo > 0, 101);`
