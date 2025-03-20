CC = gcc
CFLAGS = -fprofile-arcs -ftest-coverage
LDFLAGS = -lgcov

SRC_DIR = src
TEST_DIR = tests
BUILD_DIR = build

# Alvo principal
all: test coverage

# Compilação e execução dos testes
test: $(BUILD_DIR)/test_math
	$(BUILD_DIR)/test_math

# Compilação do executável de teste
$(BUILD_DIR)/test_math: $(SRC_DIR)/math.c $(TEST_DIR)/test_math.c
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -I$(SRC_DIR) $^ -o $@ $(LDFLAGS)

# Geração dos relatórios de cobertura
coverage: clean test
	lcov --capture --directory . --output-file $(BUILD_DIR)/coverage.info
	genhtml $(BUILD_DIR)/coverage.info --output-directory $(BUILD_DIR)/coverage_report

# Limpeza dos arquivos gerados
clean:
	rm -rf $(BUILD_DIR) *.gcda *.gcno *.gcov
