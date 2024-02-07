# https://topkaya.medium.com/log-metric-trace-ec8270649e3b

logit () { # fonksiyon adı logit

  local LOG_LEVEL=$1 # log level parametresini değişken olarak atama

  shift #parametrenin pozisyonunu kaydırmak(sola)

  MSG=$@  # her şeyi içerir ama ilk parametreyi kullanır. ( log_level)

  TIMESTAMP=$(date +'%Y-%m-%d %H:%M:%S') # date komutundan değerler timestamp değişkenine atanır.

  if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE # log_level errorsa ve verbose global değişkeni 1 ise

  then

    echo "${TIMESTAMP} ${HOST} # timestamp ve mesagge output olarak verilsin.

${PROGRAM_NAME} [${PID}] : ${LOG_LEVEL} ${MSG}"

  fi
}
logit INFO "Processing Data"

fetch-data $HOST || logit ERROR "Could not fetch data from $HOST" 
