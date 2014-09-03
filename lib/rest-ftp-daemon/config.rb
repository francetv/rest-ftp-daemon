module RestFtpDaemon
  # Global config
  NAME = 'rest-ftp-daemon'
  VERSION = "0.35"
  PORT = 3000

  # Transfer config
  TRANSFER_CHUNK_SIZE = 100000
  THREAD_SLEEP_BEFORE_DIE = 600

  # Logging
  APP_LOGTO = "/tmp/#{NAME}.log"
  LOG_TRIM_PROGNAME = 18

end
