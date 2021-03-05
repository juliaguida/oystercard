set -euf -o pipefail

if ! command -v spellchecker &> /dev/null; then
  echo ":: Installing Spellchecker CLI"
  npm install -g spellchecker-cli
fi

export PROJECT_ROOT="$(git rev-parse --show-toplevel)"

export RANGE_DONE="a-n"

(
  cd $PROJECT_ROOT
  spellchecker \
    -d "dictionary.txt" \
    -l en-GB \
    --files '['"$RANGE_DONE"']*/**/*.[Mm][Dd]'
)
