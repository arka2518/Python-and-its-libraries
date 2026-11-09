## Setting up FastAPI with an environment
python3 -m venv myenv
source myenv/bin/activate
pip install fastapi uvicorn

## How to run main.py
uvicorn main:app --reload
