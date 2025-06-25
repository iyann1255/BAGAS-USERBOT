# Using Python Slim-Buster
FROM ybgskr12/bagas-userbot:buster
# BAGAS-USERBOT
# BAGAS

RUN git clone -b BAGAS-USERBOT https://github.com/ybgskr12/BAGAS-USERBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -rhttps://raw.githubusercontent.com/aryazakaria01/Stephanie-Userbot/Stephanie-UserBot/requirements.txt
EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
