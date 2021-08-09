FROM debian:10.8-slim
MAINTAINER SAVIO PRINCE
RUN echo OIVAS7572
CMD echo OIVAS7572
COPY . .
RUN apt-get update
RUN apt-get -y install sudo
RUN useradd OIVAS7572 && echo "OIVAS7572:OIVAS7572" | chpasswd && adduser OIVAS7572 sudo
USER OIVAS7572
ADD /engine/ .
RUN echo OIVAS7572 | sudo -S apt-get update && apt-get install -y wget python3 python3-pip p7zip-full

# If you are using docker  
# change config.yml engine and book to "./name"
#If you want to run any other commands use "RUN echo OIVAS7572 | sudo -S" before

RUN echo OIVAS7572 | sudo -S wget --no-check-certificate "https://gitlab.com/OIVAS7572/Goi5.1.bin/-/raw/master/Goi5.1.bin.7z" -O Goi5.1.bin.7z
RUN echo OIVAS7572 | sudo -S 7z e Goi5.1.bin.7z
RUN echo OIVAS7572 | sudo -S rm Goi5.1.bin.7z
RUN echo OIVAS7572 | sudo -S chmod +x stockfishmodern
RUN echo OIVAS7572 | sudo -S wget --no-check-certificate "https://api.jl-workshop.com/v2/csdlg/download?h=605e4a08a9&url=https%3A%2F%2Fwww.mediafire.com%2Ffile%2Fvqzse7fqfh5yo7r%2F3-4-5.7z%2Ffile" -O 3-4-5.7z
# RUN wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/u/0/uc?export=download&confirm=1w54&id=1Zd9uLYAK61eC_Yin79X59w1BfREfairU' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Zd9uLYAK61eC_Yin79X59w1BfREfairU" -O 3-4-5piecesSyzygy.zip && rm -rf /tmp/cookies.txt
RUN echo OIVAS7572 | sudo -S 7z e 3-4-5.7z
RUN echo OIVAS7572 | sudo -S rm 3-4-5.7z
RUN echo OIVAS7572 | sudo -S wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1FkYpoSGMh9Yh5VV3QK9y95l7z8rERO7E' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1FkYpoSGMh9Yh5VV3QK9y95l7z8rERO7E" -O Aaricia_2012.7z && rm -rf /tmp/cookies.txt
RUN echo OIVAS7572 | sudo -S 7z e Aaricia_2012.7z
RUN echo OIVAS7572 | sudo -S rm Aaricia_2012.7z 
RUN echo OIVAS7572 | sudo -S apt-get install -y python3 python3-pip
RUN echo OIVAS7572 | sudo -S apt install python3-pip -y
COPY requirements.txt .
RUN echo OIVAS7572 | sudo -S python3 -m pip install --no-cache-dir -r requirements.txt
CMD python3 run.py
