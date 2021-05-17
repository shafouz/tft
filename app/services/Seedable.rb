class Seedable 
  def initialize(file_name, set="set5")
    @file_name = file_name
    @set = set
    @path = ""
    @file = ""
    @keys = []
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
  end

  def call
    file_path
    load_file
    find_keys
  end

  private
    attr_accessor :path, :keys, :file, :set, :file_name
end
