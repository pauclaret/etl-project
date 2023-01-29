# The Office Data Analysis 💼📊🚀

Welcome to my repository! 😀 I am excited to share with you the results of my ETL (Extract, Transform, Load) project of The Office, a beloved American sitcom. This involves extracting data from various sources using API and Selenium, cleaning and transforming the data in Pandas using Python, loading it into a SQL database for further analysis and gaining insights about the show and its characters by visualizating the data using Seaborn and Matplotlib.

<img src="https://cdn.wallpapersafari.com/86/33/SRW65J.jpg" alt="Michael Scott">


## Objective:
The main objective of this project was to extract, clean, and analyze data from various sources in order to gain a deeper understanding of the show and its characters. I aimed to answer questions such as: What is the percentage of episodes each character appears in? And percentage of scenes? Which are the most frequent words said by every character?

## Navigating through the repository folders:

### Data 📥
I began by extracting data from different sources using Selenium and an API, and then I cleaned and preprocessed the data using Jupyter. The extracted data contains information about the episodes and characters of The Office.

### Notebooks 📝
This folder contains the following files:

- <b>primeraextraction.ipynb</b>: This notebook is responsible for cleaning and preprocessing data extracted from <a href="https://www.kaggle.com/datasets/nehaprabhavalkar/the-office-dataset">this</a> Kaggle dataset. The dataset consists of 12 columns and 188 rows, which were scrapped from IMDb. It contains information for every episode of The Office, such as viewership, duration, rating, etc.
- <b>apiextraction.ipynb</b>: This notebook retrieves data from the <a href="https://officeapi.dev/api/characters/">The Office API</a>, processes it, and exports it to a CSV file. The data retrieved contains the names of the most important characters of the sitcom.
- <b>quotes csv.ipynb</b>: This notebook reads a CSV file containing information about every line said in the show, processes the data, and exports the cleaned data to a new CSV file. The data is extracted from <a href="https://docs.google.com/spreadsheets/d/18wS5AAwOh8QO95RwHLS95POmSNKA2jjzdt0phrxeAE0/edit#gid=747974534">this</a> excel file.
- <b>selenium imdb.ipynb</b>: This notebook uses Selenium to extract data from the <a href="https://www.imdb.com/title/tt0386676/?ref_=nv_sr_srsg_0">IMDB website</a>, in order to know the characters that appear in every episode. It then cleans, processes, and exports the data to a CSV file.
- <b>visualization.ipynb</b>: This notebook uses the SQLAlchemy library to connect to the database, and then Pandas library is used to read and manipulate the data. The notebook uses several SQL queries to extract data from the database, and then the Seaborn and Matplotlib libraries are used to create visualizations of the data. The first query retrieves the first name and the percentage of episodes in which the character appears. The second query retrieves the first name and the percentage of scenes in which the character appears. The third query retrieves the first name and the mean number of lines spoken per episode by characters who appeared in at least six episodes throughout the entire series. The fourth query retrieves the season and the proportion of lines spoken by Michael, Dwight, Jim, Pam, and Andy.

### Images 🖼️
In this folder, you will find the visualizations created using Matplotlib and Seaborn. These images will help you understand the insights and conclusions I obtained from the data.

### Src 🔧
This folder contains the Python support documentation, which will help you understand how the code works and how to use it.

### Database 🗄️
This folder contains the SQL script used to create the database, as well as the SQL queries used to insert and extract data from the database.

### Libraries 📚
Here are some of the libraries I used in this project:
- pandas: a library that provides fast, flexible, and expressive data structures designed to make working with "relational" or "labeled" data both easy and intuitive.
- sqlalchemy: a library that provides a nice API to interact with SQL databases.
- numpy: a library that provides support for large, multi-dimensional arrays and matrices of numerical data.
- matplotlib: a library that provides functions for creating static, animated, and interactive visualizations in Python.
- seaborn: a library that is built on top of matplotlib and provides a more powerful API for creating visualizations.
- selenium: a library that allows you to automate web browsers and interact with web pages programmatically.
- requests: a library that allows you to send HTTP requests in Python and handle the response.



<strong>I hope you enjoy exploring the project as much as I enjoyed creating it!</strong> 🧑‍💻
