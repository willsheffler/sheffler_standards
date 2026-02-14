#!/usr/bin/env bash
set -euo pipefail

# Canonical standards sync script.
# Source-of-truth repo structure:
#   sheffler_standards/
#     standards/   <- synced to project shared/sheffler_standards
#     logs/        <- not synced

REPO_ROOT="$(pwd)"
if [[ ! -d "${REPO_ROOT}/.git" ]]; then
  echo "error: run this from a project repo root (missing ${REPO_ROOT}/.git)" >&2
  exit 1
fi

STANDARDS_REPO_URL="${STANDARDS_REPO_URL:-https://github.com/willsheffler/sheffler_standards.git}"
STANDARDS_BRANCH="${STANDARDS_BRANCH:-main}"
DEST_DIR="${REPO_ROOT}/shared/sheffler_standards"
SYNC_FILE="${REPO_ROOT}/.standards-last-sync"
TEMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TEMP_DIR}"' EXIT

mkdir -p "${REPO_ROOT}/shared"

git clone --depth 1 --branch "${STANDARDS_BRANCH}" "${STANDARDS_REPO_URL}" "${TEMP_DIR}/sheffler_standards" >/dev/null
SRC_DIR="${TEMP_DIR}/sheffler_standards/standards"

if [[ ! -d "${SRC_DIR}" ]]; then
  echo "error: expected standards source at ${SRC_DIR}" >&2
  exit 1
fi

rm -rf "${DEST_DIR}"
mkdir -p "${DEST_DIR}"
cp -R "${SRC_DIR}"/. "${DEST_DIR}"/

echo "synced standards content: ${DEST_DIR}"

STAMP_UTC="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
COMMIT_SHA="$(git -C "${TEMP_DIR}/sheffler_standards" rev-parse --short HEAD 2>/dev/null || echo unknown)"
{
  echo "synced_at_utc=${STAMP_UTC}"
  echo "standards_repo_url=${STANDARDS_REPO_URL}"
  echo "standards_branch=${STANDARDS_BRANCH}"
  echo "standards_commit=${COMMIT_SHA}"
} > "${SYNC_FILE}"

echo "synced: .standards-last-sync"
echo "done"
