#!/usr/bin/env bash
set -euo pipefail

# Canonical standards sync script.
# Run from a project repo root as:
#   shared/sheffler_standards/scripts/sync-standards.sh

REPO_ROOT="$(pwd)"
if [[ ! -d "${REPO_ROOT}/.git" ]]; then
  echo "error: run this from a project repo root (missing ${REPO_ROOT}/.git)" >&2
  exit 1
fi

STANDARDS_REPO_URL="${STANDARDS_REPO_URL:-https://github.com/willsheffler/sheffler_standards.git}"
STANDARDS_BRANCH="${STANDARDS_BRANCH:-main}"
DEST_DIR="${REPO_ROOT}/shared/sheffler_standards"
SYNC_FILE="${REPO_ROOT}/.standards-last-sync"

mkdir -p "${REPO_ROOT}/shared"

if [[ -d "${DEST_DIR}/.git" ]]; then
  git -C "${DEST_DIR}" fetch origin "${STANDARDS_BRANCH}" >/dev/null
  git -C "${DEST_DIR}" checkout "${STANDARDS_BRANCH}" >/dev/null
  git -C "${DEST_DIR}" pull --ff-only origin "${STANDARDS_BRANCH}" >/dev/null
  echo "updated: ${DEST_DIR}"
else
  git clone --depth 1 --branch "${STANDARDS_BRANCH}" "${STANDARDS_REPO_URL}" "${DEST_DIR}" >/dev/null
  echo "cloned: ${DEST_DIR}"
fi

if [[ -f "${DEST_DIR}/STANDARDS_VERSION" ]]; then
  cp "${DEST_DIR}/STANDARDS_VERSION" "${REPO_ROOT}/.standards-version"
  echo "synced: .standards-version"
fi

STAMP_UTC="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
COMMIT_SHA="$(git -C "${DEST_DIR}" rev-parse --short HEAD 2>/dev/null || echo unknown)"
{
  echo "synced_at_utc=${STAMP_UTC}"
  echo "standards_repo_url=${STANDARDS_REPO_URL}"
  echo "standards_branch=${STANDARDS_BRANCH}"
  echo "standards_commit=${COMMIT_SHA}"
} > "${SYNC_FILE}"

echo "synced: .standards-last-sync"
echo "done"
