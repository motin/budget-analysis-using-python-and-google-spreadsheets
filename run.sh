set -e

if [ ! -d ./venv ]; then
  ./setup-python-venv.sh
fi
source venv/bin/activate

echo "* Parsing transactions and uploading to Google Spreadsheets (launching the Notebook only on error)"
papermill ./budget-analysis.ipynb ./budget-analysis.papermill-output.ipynb || jupyter-notebook ./budget-analysis.papermill-output.ipynb
