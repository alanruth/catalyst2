class PagesController < ApplicationController
  def index
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.servelife.com/"))
  end
end
