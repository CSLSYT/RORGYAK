class KpController < ApplicationController
  def home
  end

  def reference
    @works = Work.all
  end

  def contact
  end
  
  def joinourteam
  end

  def about
  end

end
