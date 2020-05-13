require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]


# Generate a list of strings with the name and size (eg. "Alpha - 30")
def list_of_strings(companies)
    companies.map { |i| "#{i.name} - #{i.size.to_s}"}
end


# Combine all the sizes with reduce
def combine_sizes(companies)
    res = companies.reduce(0) { |sum, company| sum + company.size}
    "There are #{res} employees total in all companies"
end

# Filter the list to show only companies over 100
def filter_over_100(companies)
    list_of_strings(companies.filter {|company| company.size > 100})
end

# Find the company named "Beta"
def find_beta(companies)
    res = companies.find { |company| company.name == "Beta"}
    "Found company #{res.name} with #{res.size.to_s} employees"
end

# Find the largest company
def largest_company(companies)
    res = companies.max_by { |company| company.size}
    "The largest company is #{res.name} with #{res.size.to_s} employees"
end

# Sort the companies from largest to smallest
def largest_to_smallest(companies)
    list_of_strings(companies.sort { |company| company.size})
end

binding.pry