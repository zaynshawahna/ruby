# CSV Viewer

## Overview

`csv_viewer` is a Ruby application that allows users to fetch and display CSV files from a specified directory. The user can select which CSV file to display, and the program will format the contents into a console table.

This project is organized using multiple classes, where each class is responsible for specific tasks, such as fetching files, reading CSV content, and displaying the data.

## Features

- Fetch all CSV files from a specified directory.
- Allow the user to select a CSV file to display.
- Display CSV file content in a formatted console table.
- Support multiple files, and the user can quit at any time.
- Modular design using classes like `Fetcher`, `Reader`, `Viewer`, and `Interface`.

## Dependencies

This project uses the following Ruby gems:

- `tty-prompt`: For prompting the user to select a CSV file.
- `csv`: For handling CSV files.
- `colorize`: For colorizing the console output.
- `console_table`: For displaying the CSV data in a table format.

To install the necessary gems, you can run:

```bash
bundle install
```
## Installation
git clone git@github.com:zaynshawahna/rubycode.git
cd csv_viewer
bundle install
##run 
ruby main.rb






# RackApp

A simple Rack application to demonstrate serving static files, including CSS.

## Table of Contents

- [Installation](#installation)
- [Folder Structure](#folder-structure)
- [Configuration](#configuration)
- [Usage](#usage)
- [License](#license)

## Installation

1. **Clone the repository** (or download the project):
   ```bash
   git clone url
   cd Rack_app
   ```
2.Install Dependencies: 
    bundle install
3.run 
```bash 
  rackup config.ru 
```
4. folder

  Rack_app/
  │  
  ├── lib/
  │   ├── public/
  │   │   ├── stylesheets/
  │   │      └── app.css      
  │   │ 
  │   └── rackapp.rb    
  │   │  
  │   └── Gemfile   
  │   │ 
  │   └── Gemfile.lock   
  │
  └── config.ru    
  
