require "csv"

class SchoolWeightParser
  attr_reader :path

  def initialize
    @path = "public/Student_Weight_Status_Category_Reporting_Results__Beginning_2010.csv"
    parse_csv
  end

  def contents
    @contents ||= CSV.open(path, headers: true, header_converters: :symbol)
  end

  def parse_csv
    puts "Processing..."
    
    contents.each do |row|
      county = County.find_or_create_by(name: row[:county].capitalize)

      school = School.find_or_create_by(uid: row[:location_code]) do |school|
        school.county                = county
        school.overweight_percentage = BigDecimal.new(row[:pct_overweight].to_s)
        school.obese_percentage      = BigDecimal.new(row[:pct_obese].to_s)
      end

      puts "County: #{county.name}: School #{school.uid} added" if school.new_record?
    end
  end
end
