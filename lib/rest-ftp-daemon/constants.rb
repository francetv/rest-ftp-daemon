# Terrific constants
APP_NAME = "rest-ftp-daemon"
APP_VER = "0.102"

# Some global constants
IDENT_JOB_LEN = 4
IDENT_NOTIF_LEN = 4
IDENT_RANDOM_LEN = 8
IDENT_TEMPFILE_LEN = 8
DEFAULT_LOGS_PIPE_LEN = 15
DEFAULT_LOGS_ID_LEN = 8

# Some defaults
DEFAULT_CONNECT_TIMEOUT_SEC = 30
DEFAULT_UPDATE_EVERY_KB = 2048
DEFAULT_WORKERS = 1

# Initialize markers
APP_STARTED = Time.now
APP_LIBS = File.dirname(__FILE__)

# Debugging
DEBUG_FTP_COMMANDS = false
