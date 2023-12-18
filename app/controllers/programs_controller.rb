class ProgramsController < ApplicationController

    def new
      @program = Program.new
    end
end
