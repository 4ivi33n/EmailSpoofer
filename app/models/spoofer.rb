class Spoofer < ActiveRecord::Base
validates :from, :to,:presence=>true,:format=>{:with=>/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/,:message=>" : Enter valid email address"}
end
