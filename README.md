# Projeto Final - lcov/gcov

Este projeto demonstra como medir a cobertura de código em um projeto modular em C utilizando o lcov para capturar os dados de cobertura e o gcov para gerar os arquivos de cobertura (.gcov).

## Descrição do Projeto

O projeto consiste em:
- **Módulo Math:** Implementa funções básicas (adição, subtração, multiplicação, divisão fatorial e potência).
- **Aplicação Principal:** Demonstra o uso do módulo Math.
- **Testes Unitários:** Localizados em `tests/test_math.c`, que validam as funções implementadas.

## Como Utilizar

1. **Compilar a Aplicação e os Testes:**
   ```bash
   make
