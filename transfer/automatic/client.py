import os
import time
import requests

FOLDER = os.path.expanduser("~/Downloads/recordingModule/recordings")
URL = 'http://192.168.200.193:5000/upload'

while True:
    files = os.listdir(FOLDER)
    for filename in files:
        path = os.path.join(FOLDER, filename)
        if os.path.isfile(path) and filename.startswith("rec_"):
            with open(path, 'rb') as f:
                requests.post(URL, files={'file': f})
            os.remove(path)
    time.sleep(0.1)
