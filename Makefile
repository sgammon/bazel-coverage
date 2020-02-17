
all: build

build:
	@echo "Running testsuite..."
	@bazelisk build //... && \
		bazelisk coverage --test_output=errors --combined_report=lcov -- //javatests/...
	@echo "Generating HTML report..."
	@genhtml bazel-testlogs/javatests/sample/BasicTest/coverage.dat --output-directory reports/coverage

.PHONY: build all

