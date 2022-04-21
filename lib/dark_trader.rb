require 'nokogiri'
require 'open-uri'

def scrap(url)
  page = Nokogiri::HTML(URI.open(url))
  return page
end

def fetch_currencies(page,xpath1)
  currencies=[]
  page.xpath(xpath1).each do |currency| 
    puts currency.text
    currencies << currency.text
  end
  return currencies
end

def fetch_prices(page,xpath2)
  prices = []
  page.xpath(xpath2).each do |price| 
    puts price.text
    prices << price.text[1..-1].to_f
  end
  return prices
end

def prgm()
  page = scrap('https://coinmarketcap.com/all/views/all/')
  xpath1 = "//tbody//a[@class='cmc-table__column-name--symbol cmc-link']"
  xpath2 = "//tbody//td[@class='cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price']//a[@class='cmc-link']"
  list_currencies_price =[]
  
  currencies = fetch_currencies(page,xpath1)
  puts '-'*50
  prices = fetch_prices(page,xpath2)
  puts '-'*50
  currencies.each.with_index {|a, i| list_currencies_price << {a => prices[i]}} 
  puts list_currencies_price
  return list_currencies_price
end

prgm()