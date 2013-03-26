class HomeController < ApplicationController
  def index
    @max = Word.count
  end

  def words
    x = params[:num]
    w = Word.where(index:x).first.value
    hex = Number.word2hex(w)
    bin = Number.hex2bin(hex.downcase)
    dec = Number.bin2dec(bin)
    rson = { word:w, hex:hex, bin:bin, dec:dec}
    render :json => rson
  end
end