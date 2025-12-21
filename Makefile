.PHONY: help get build test analyze format clean doctor

help:
	@echo "Tokyoapps - Available commands:"
	@echo "  make get      - Get Flutter dependencies"
	@echo "  make build    - Build APK and AAB"
	@echo "  make test     - Run tests with coverage"
	@echo "  make analyze  - Analyze code"
	@echo "  make format   - Format code"
	@echo "  make clean    - Clean build files"
	@echo "  make doctor   - Run flutter doctor"

get:
	flutter pub get

build:
	flutter build apk --release
	flutter build appbundle --release

test:
	flutter test --coverage

analyze:
	flutter analyze --fatal-infos --fatal-warnings

format:
	dart format .

clean:
	flutter clean
	rm -rf build/
	rm -rf .dart_tool/

doctor:
	flutter doctor -v
