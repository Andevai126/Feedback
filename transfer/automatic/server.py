from flask import Flask, request
import os

folder = os.path.expanduser("~") + "\\Documents\\GitHub\\recordingModule\\recordings\\"

app = Flask(__name__)

@app.route('/upload', methods=['POST'])
def upload():
    file = request.files['file']
    file.save(folder + "\\" + file.filename)
    return 'OK'

app.run(host='0.0.0.0')
