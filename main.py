from flask import Flask
import time

app = Flask(__name__)

@app.route('/')
def hello():
    current_time = int(time.time())
    return f"アクセスしていただきありがとうございます。現在時刻は {current_time} です。"

if __name__ == '__main__':
    app.run(debug=True)
