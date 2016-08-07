class ApplicationController < ActionController::API
  def json_camelcase(object, opts = {})
    render json: transform_keys(object.as_json(opts)) { |key| key.to_s.camelize(:lower) }
  end

  def underscore_hash(hash)
    transform_keys(hash, &:underscore)
  end

  def parse_json_camelcase(object)
    object = '{}' if object.nil? || object.empty?
    underscore_hash(::JSON.parse(object))
  end

  private

  def transform_keys(object, &block)
    case object
    when Hash then Hash[object.map do |key, value|
      [yield(key).to_sym, transform_keys(value, &block)]
    end]
    when Array then object.map { |item| transform_keys(item, &block) }
    else object
    end
  end
end
