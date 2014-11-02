module RestFtpDaemon
  class WorkerPool < RestFtpDaemon::Common

    attr_reader :requested, :processed, :wid

    def initialize(number_threads)
      # Logger
      @logger = RestFtpDaemon::Logger.new(:workers, "WORKER")

      # Check parameters
      raise "A thread count of #{number_threads} is less than one" if number_threads < 1

      # Create worker threads
      info "WorkerPool initializing with #{number_threads} workers"
      @mutex = Mutex.new
      @counter = 0

      for wid in 1..number_threads
        Thread.new() do
          @mutex.synchronize do
            @counter +=1
          end
          work("w#{@counter}")
        end
      end

    end

    # def wait
    #   item = @out.pop
    #   @lock.synchronize { @processed += 1 }
    #   block_given? ? (yield item) : item
    # end

    # def progname
    #   "WORKER #{@wid}"
    # end

    def work wid
      loop do

        begin
          info "worker [#{wid}] waiting for a job"

          # Wait for a job to come into the queue
          job = $queue.pop
          info "worker [#{wid}] popped [#{job.id}]"

          # Do the job
          job.wid = wid
          job.process
          info "worker [#{wid}] processed [#{job.id}]"

        rescue Exception => ex
          info "UNHANDLED EXCEPTION: #{ex.message}"
          ex.backtrace.each do |line|
            info line, 1
          end
        else

        # Clean job status
        job.wid = nil

        end

      end
    end

  end

end
