<!-- PROJECT LOGO -->
<br />
<div align="center">
  <!-- <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a> -->

  <h3 align="center">Kate's Movie Database</h3>

  <p align="center">
    Tracking the value of my AMC A-List subscription!
    <br />
    <!-- <a href="https://github.com/othneildrew/Best-README-Template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template">View Demo</a>
    <a href="https://github.com/othneildrew/Best-README-Template/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    <a href="https://github.com/othneildrew/Best-README-Template/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a> -->
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<!-- <details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details> -->

<!-- ABOUT THE PROJECT -->
## About The Project

<!-- [![Product Name Screen Shot][product-screenshot]](https://example.com) -->

This project includes tables, views, and models created by the KMDB project.

### What Gets Tracked

#### Movies

Most movies I watch gets added to my letterboxd profile and extracted from the platform on a regular basis. The diary table includes:

- **Movie Details**: Name, release year
- **Ratings**: Scale of 0-5
- **Reviews**: Review ID (when available)
- **Rewatches**

## Table Schemas

## Models



<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* [![Snowflake][app.snowflake.com]][Snowflake-url]
* [![dbt][learn.getdbt.com]][dbt-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [x] Configure dbt project
- [x] Test Sources
- [ ] Snapshot Reviews
- [ ] Movie Tracking Table
- [ ] Monthly Movie Savings
- [ ] Movie Savings Summary
- [ ] Movie Savings Dashboard

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

I found these list of resources to be helpful!

* [dbt Developer Learning Path](https://learn.getdbt.com/learn/learning-path/dbt-certified-developer)
* [dbt Analytics Engineer Study Guide](https://www.getdbt.com/dbt-assets/certifications/dbt-certificate-study-guide-version-1-11)
* [dbt POV Model Cost Calculator](https://github.com/dbt-labs/dbt-pov-model-cost-calculator/blob/main/models/agg_sao_savings_summary_snowflake.sql)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[app.snowflake.com]: https://img.shields.io/badge/Snowflake-29B5E8?logo=snowflake&logoColor=fff
[Snowflake-url]: https://app.snowflake.com/
[learn.getdbt.com]: https://img.shields.io/badge/dbt-orange
[dbt-url]: https://www.getdbt.com