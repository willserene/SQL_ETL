# Zamboni Zealots

<!-- README -->
  <h3 align="center">NHL Hockey ETL</h3>
  <p align="center"> 
  Let's go get them Ice Biscuits!
    <br />
    <a href="https://github.com/willserene/project-2-zamboni-zealots/issues">Report Bug</a>
    ·
    <a href="https://github.com/willserene/project-2-zamboni-zealots/issues">Request Feature</a>
  </p>
</p>


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    <li><a href="#built-with">Built With</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

If data was publicly available, how would you obtain it?

*  Connects to Kaggle via API token using Python.  It extracts-and-unzips all files from the NHL Hockey source, which includes 13 CSVs.
*  Using pandas, CSVs are loaded to dataframes then prepared/transformed for their final migration to a PostgreSQL database.
*  PostgreSQL and pgAdmin were used to establish a mini-warehouse for all hockey data for analysis.
*  The Jupyter Notebook uses pandas to_sql(), as well as a custom function using execute_values() from psycopg2, to load the transformed data to the appropriate database tables.
*  Queries analyzing the data have been written in SQL.

Each dataframe load-to-PostgreSQL prints an execution time (modular), and the notebook also tracks the total process run time.


<!-- BUILT WITH -->
## Built With

* Jupyter Notebook
* Kaggle
* MS Word
* pgAdmin
* PostreSQL
* Python


<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/willserene/project-2-zamboni-zealots/issues) for a list of proposed features (and known issues).


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/amazing_feature`)
3. Commit your Changes (`git commit -m 'Add some amazing_feature'`)
4. Push to the Branch (`git push origin feature/amazing_feature`)
5. Open a Pull Request


<!-- CONTACT -->
## Contact

* [Boyd](https://github.com/Boyder3113/)
* [Leanne](https://github.com/thompsle154/)
* [Tommy](https://github.com/gldn-god/)
* [Travis](https://github.com/Travbz/)
* [Will](https://github.com/willserene/)



Project Link: [Zamboni Zealots](https://github.com/willserene/project-2-zamboni-zealots)
