class DummyController < ApplicationController
  layout false
  def index
    render('test')
  end
  def test
    redirect_to ("/dummy/index")
  end
end
