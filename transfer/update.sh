
source ../.env

# ./pscp -pw "$SSH_PASS" ./../sync/wired/uart_send.cpp "$SSH_USER@192.168.200.96:/home/$SSH_USER/Downloads/recordingModule/"
# ./pscp -pw "$SSH_PASS" ./../sync/wired/uart_send.cpp "$SSH_USER@192.168.200.132:/home/$SSH_USER/Downloads/recordingModule/"
# ./pscp -pw "$SSH_PASS" ./../sync/wired/uart_send.cpp "$SSH_USER@192.168.200.73:/home/$SSH_USER/Downloads/recordingModule/"
# ./pscp -pw "$SSH_PASS" ./../sync/wired/uart_listen.cpp "$SSH_USER@192.168.200.132:/home/$SSH_USER/Downloads/recordingModule/"
# ./pscp -pw "$SSH_PASS" ./../sync/wired/uart_listen.cpp "$SSH_USER@192.168.200.96:/home/$SSH_USER/Downloads/recordingModule/"
# ./pscp -pw "$SSH_PASS" ./../sync/wired/uart_listen.cpp "$SSH_USER@192.168.200.73:/home/$SSH_USER/Downloads/recordingModule/"

# g++ -o send uart_send.cpp -lwiringPi
# g++ -o list uart_listen.cpp -lwiringPi

./pscp -pw "$SSH_PASS" ./../record/record.cpp "$SSH_USER@192.168.235.132:/home/$SSH_USER/Downloads/recordingModule/"
./pscp -pw "$SSH_PASS" ./../record/record.cpp "$SSH_USER@192.168.235.96:/home/$SSH_USER/Downloads/recordingModule/"
./pscp -pw "$SSH_PASS" ./../record/record.cpp "$SSH_USER@192.168.235.73:/home/$SSH_USER/Downloads/recordingModule/"

# g++ record.cpp -o pr -lasound -pthread -lwiringPi

# ./pscp -pw "$SSH_PASS" ./../transfer/automatic/client.py "$SSH_USER@192.168.200.96:/home/$SSH_USER/Downloads/recordingModule/"
# ./pscp -pw "$SSH_PASS" ./../transfer/automatic/client.py "$SSH_USER@192.168.200.132:/home/$SSH_USER/Downloads/recordingModule/"
# ./pscp -pw "$SSH_PASS" ./../transfer/automatic/client.py "$SSH_USER@192.168.200.73:/home/$SSH_USER/Downloads/recordingModule/"
