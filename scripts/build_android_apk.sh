#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_DIR="${HOME}/Downloads/ShivamOS_Downloads"
OUTPUT_APK="${OUTPUT_DIR}/ShivamOS-release.apk"
BUILD_APK="${PROJECT_ROOT}/build/app/outputs/flutter-apk/app-release.apk"

cd "${PROJECT_ROOT}"

if ! command -v flutter >/dev/null 2>&1; then
  echo "ERROR: Flutter SDK is not available on PATH." >&2
  exit 127
fi

echo "Building ShivamOS Android release APK..."
flutter build apk --release

if [[ ! -s "${BUILD_APK}" ]]; then
  echo "ERROR: Flutter reported success, but the expected APK is missing or empty: ${BUILD_APK}" >&2
  exit 1
fi

if ! command -v unzip >/dev/null 2>&1 || ! unzip -tq "${BUILD_APK}" >/dev/null; then
  echo "ERROR: The generated file is not a valid APK archive: ${BUILD_APK}" >&2
  exit 1
fi

mkdir -p "${OUTPUT_DIR}"
TEMP_APK="${OUTPUT_APK}.tmp"
trap 'rm -f "${TEMP_APK}"' EXIT
cp "${BUILD_APK}" "${TEMP_APK}"

if [[ ! -s "${TEMP_APK}" ]] || ! unzip -tq "${TEMP_APK}" >/dev/null; then
  echo "ERROR: The copied APK failed verification; final destination was not updated." >&2
  exit 1
fi

mv -f "${TEMP_APK}" "${OUTPUT_APK}"
trap - EXIT

APK_BYTES="$(wc -c < "${OUTPUT_APK}" | tr -d '[:space:]')"
if [[ "${APK_BYTES}" -eq 0 ]]; then
  echo "ERROR: Final APK is empty: ${OUTPUT_APK}" >&2
  exit 1
fi

echo "BUILD SUCCESS: verified APK exists at ${OUTPUT_APK} (${APK_BYTES} bytes)."
