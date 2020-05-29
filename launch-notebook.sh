set -e

if [ ! -d ./venv ]; then
  ./setup-python-venv.sh
fi
source venv/bin/activate

echo "* Launching notebook"
echo

jupyter-notebook --MultiKernelManager.default_kernel_name=budget-analysis ./budget-analysis.ipynb
