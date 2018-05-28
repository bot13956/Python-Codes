'''
Monthly energy consumption in kwh for a two-bedroom apartment complex in Pittsburg, Kansas
'''

month_lab = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul","Aug", "Sep","Oct", "Nov","Dec"]
consumption = [1735,1292,833,764,447,455,469,543,467,446,447,745]
month_val=range(1,13)

import matplotlib.pyplot as plt
plt.bar(month_val,consumption)
plt.xticks(month_val, month_lab)
plt.ylabel("kWh")
plt.ylim(0,2000)
plt.show()