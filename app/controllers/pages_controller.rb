class PagesController < ApplicationController
  def index
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.servelife.com/"))
  end

  def about

  end

  def services

  end

  def register

  end
end
