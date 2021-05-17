class Seedable 
  def initialize(file_name, set="set5")
    @file_name = file_name
    @set = set
    @path = file_path
    @file = load_file
    @keys = find_keys
  end

  def file_path
    @path = Rails.root.join("app/assets/images/#{set}/#{file_name}.json").to_s 
  end

  def load_file
    @file = File.open(path) {|file| JSON.load(file)}
  end

  def find_keys
    results = []
    file.each do |el|
      results << el.keys
    end
    @keys = results.flatten.uniq
    add_underscore(@keys)
    replace_id(@keys)
  end

  def add_underscore(keys)
    keys.map! {|key| key.underscore}
  end

  def replace_id(keys)
    index = keys.find_index("id")
    if index.present?
      keys[index] = "#{file_name.singularize}_id"
    end
    keys
  end

  def seedable_hashes
    f = file.map {|x| x.transform_keys(&:underscore)}
  end

  attr_accessor :keys, :file

  private
  attr_accessor :path, :set, :file_name
end
