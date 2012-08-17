# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.destroy_all
Charge.destroy_all

c1 = Customer.create(:firstname => 'Johny', :lastname => 'Flow')
c2 = Customer.create(:firstname => 'Rajagopalan', :lastname => 'Bhavani Shankar')
c3 = Customer.create(:firstname => 'Andrew', :lastname => 'Chung')
c4 = Customer.create(:firstname => 'Mike', :lastname => 'Smith')

atts = {:amount => 100, :fee => 2, :currency => 'EGP'}

#10 Should be successful transactions:
succ_atts = atts.merge({:paid => true})
#  - 5 Should be linked to Customer 1
5.times{ c1.charges.create!(succ_atts) }
# - 3 Should be linked to Customer 2
3.times{ c2.charges.create(succ_atts) }
# - 1 Should be linked to Customer 3
1.times{ c3.charges.create(succ_atts) }
# - 1 Should be linked to Customer 4
1.times{ c4.charges.create(succ_atts) }


# 5 Should be transactions that failed:
fail_atts = atts.merge({:paid => false, :failure_message => 'error'})
#   - 3 Should be linked to Customer 3
3.times{ c3.charges.create(fail_atts) }
#   - 2 Should be linked to Customer 4
2.times{ c4.charges.create(fail_atts) }


# 5 should be disputed:
disputed_atts = atts.merge({:paid => false, :disputed => true})
#   - 3 should be linked to Customer 1
3.times{ c1.charges.create(disputed_atts) }
#   - 2 should be linked to customer 2
2.times{ c2.charges.create(disputed_atts) }