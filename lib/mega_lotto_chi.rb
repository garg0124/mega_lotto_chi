# frozen_string_literal: true

require_relative "mega_lotto_chi/version"
require_relative "mega_lotto_chi/drawing"
require_relative "mega_lotto_chi/core_ext"

begin
  require "pry"
  rescue => LoadError 
end

module MegaLottoChi
end
