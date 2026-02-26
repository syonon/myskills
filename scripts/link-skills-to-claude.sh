#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
MANAGED_SKILLS_DIR="${REPO_ROOT}/agents/skills"
SOURCE_ROOT="${HOME}/.agents/skills"
DEST_ROOT="${HOME}/.claude/skills"

if [[ ! -d "${MANAGED_SKILLS_DIR}" ]]; then
  echo "Error: managed skills directory not found: ${MANAGED_SKILLS_DIR}" >&2
  exit 1
fi

mkdir -p "${DEST_ROOT}"

missing_source=0
shopt -s nullglob

for skill_dir in "${MANAGED_SKILLS_DIR}"/*; do
  if [[ ! -d "${skill_dir}" ]]; then
    continue
  fi

  skill_name="$(basename -- "${skill_dir}")"
  src="${SOURCE_ROOT}/${skill_name}"
  dst="${DEST_ROOT}/${skill_name}"

  if [[ ! -d "${src}" ]]; then
    echo "WARN: missing source skill directory: ${src}" >&2
    missing_source=1
    continue
  fi

  if [[ -e "${dst}" || -L "${dst}" ]]; then
    echo "SKIP: destination already exists: ${dst}"
    continue
  fi

  ln -s "${src}" "${dst}"
  echo "LINKED: ${dst} -> ${src}"
done

if [[ "${missing_source}" -eq 1 ]]; then
  exit 1
fi
