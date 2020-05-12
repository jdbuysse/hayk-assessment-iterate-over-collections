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
    # broken
    companies.reduce(0) { |sum, company| sum + company.size}
end

# Filter the list to show only companies over 100
def filter_over_100(companies)
    # call list of strings() on the line below?
    companies.filter {|company| company.size > 100}
end

# Find the company named "Beta"
def find_beta(companies)
    companies.find { |company| company.name == "Beta"}
end

# Find the largest company
def largest_company(companies)
    companies.max_by { |company| company.size}
end

# Sort the companies from largest to smallest
def largest_to_smallest(companies)
    # not working atm
    companies.sort { |company| company.size}
end

binding.pry