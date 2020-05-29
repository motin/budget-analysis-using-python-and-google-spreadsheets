set -e

if [ ! -d ./venv ]; then
  ./setup-python-venv.sh
fi
source venv/bin/activate

echo "* Parsing transactions and uploading to Google Spreadsheets"
papermill ./budget-analysis.ipynb ./budget-analysis.papermill-output.ipynb -p run_transactions_flow True

jupyter-notebook ./budget-analysis.papermill-output.ipynb
