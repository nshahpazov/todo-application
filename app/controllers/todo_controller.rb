class TodoController < ApplicationController
  def new
  end
  def index
    json_camelcase({a_a_a: 1})
  end
end
