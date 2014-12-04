require "log_it/version"

module LogIt
  def logit(stmnt, args={})
    formatted_stmnt = args[:color].nil? ? stmnt : stmnt.colorize(args[:color])
    lvl = args[:level] || args[:lvl] || args[:severity]

    case lvl
    when :unknown, 'unknown', 5, '5'
      Rails.logger.unknown { formatted_stmnt }
    when :fatal, 'fatal', 4, '4'
      Rails.logger.fatal { formatted_stmnt }
    when :error, 'error', 3, '3'
      Rails.logger.error { formatted_stmnt }
    when :warn, 'warn', 2, '2'
      Rails.logger.warn { formatted_stmnt }
    when :info, 'info', 1, '1'
      Rails.logger.info { formatted_stmnt }
    when :debug, 'debug', 0, '0', nil
      Rails.logger.debug { formatted_stmnt }
    end
  end
  alias_method :log_it, :logit
end
