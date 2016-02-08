require 'test_helper'

class JobTest < ActiveSupport::TestCase

    def setup
        @job = Job.new(job_title: "My New Home Job", job_description: "This is my first home job", 
                job_address: "123 Sample Street")    
    end
    
    test "job should be valid" do
        assert @job.valid?
    end
    
end

