import yfinance as yf
import pandas as pd
import numpy as np
import wget
import json
import matplotlib.pyplot as plt
import plot

# Using the `Ticker` module we can create an object that will allow us to access functions to extract data.
# To do this we need to provide the ticker symbol for the stock,
# here the company is Apple and the ticker symbol is `AAPL`.
apple = yf.Ticker("AAPL")
# URL where the apple.json file is located
url = "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-PY0220EN-SkillsNetwork/data/apple.json"
# Download the apple.json file from the url, unmasked below line if run for first time
# filename = wget.download(url)
# print(filename)

# json block to extract information based on json file
with open('apple.json') as json_file:
    apple_info = json.load(json_file)
    # Print the type of data variable
    # print("Type: ", type(apple_info))
# print(apple_info)

# Get the latest history of apple share price
apple_share_price_data = apple.history(period = "max")
# print(apple_share_price_data.tail())

# creating the pandas DataFrame based on the apple share price and save to csv for MS.Excel viewing
df = pd.DataFrame(apple_share_price_data)
df.to_csv('apple_share_price_data.csv', index=True)

# Matplotlib blocks for storing the plot on Date(x-axis) vs Open price data(y-axis)
apple_share_price_data.reset_index(inplace=True)
xpoints = np.array(apple_share_price_data['Date'])
ypoints = np.array(apple_share_price_data['Open'])
# Creating the graph plot, unmasked if run first time
plt.plot(xpoints,ypoints)
plt.show()

df2 = pd.read_csv('apple_dividends.csv')
print(df2.tail())
# change date format from YY-MM-DD to YY only
x_date_format = np.array(df2['Date'], dtype='datetime64[M]')
xdividends = np.array(x_date_format)
ydividends = np.array(df2["Dividends"])
plt.plot(xdividends,ydividends)
plt.show()