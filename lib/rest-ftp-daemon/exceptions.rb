module RestFtpDaemon

  class RestFtpDaemonException    < StandardError; end

  class DummyException            < RestFtpDaemonException; end

  class MissingQueue              < RestFtpDaemonException; end
  class MissingPool               < RestFtpDaemonException; end

  class JobException              < RestFtpDaemonException; end
  class JobNotFound               < RestFtpDaemonException; end
  class JobUnresolvedTokens       < RestFtpDaemonException; end
  class JobAssertionFailed        < RestFtpDaemonException; end
  class JobMissingAttribute       < RestFtpDaemonException; end
  class JobSourceNotFound         < RestFtpDaemonException; end
  class JobTargetUnsupported      < RestFtpDaemonException; end
  class JobTargetUnparseable      < RestFtpDaemonException; end
  class JobTargetFileExists       < RestFtpDaemonException; end
  class JobTargetShouldBeDirectory< RestFtpDaemonException; end
  class JobTooManyOpenFiles       < RestFtpDaemonException; end

end
