# README

* System dependencies and versions
  * For use of local commands and server
    - Ruby 2.6.3
    - Rails 6.1.7
    - Bundler 2.3.24

  * Using only docker
    - Docker-compose 1.29.2
    - Docker version 20.10.11

* Setup
  ```
  bundle install --path bundle-path  # To install a local bundle)
  docker-compose up -d (To build start as docker containers)
  ```

* Database creation
  ```
  bundle exec db:create
  ```

* Database initialization
  ```
  bundle exec db:schema:load
  ```

* How to run the test suite
  ```
  bundle exec rspec
  ```

* Setup test data from remote (100 agents)
  ```
  export API_KEY=****
  bundle exec rake agencies:create_agencies
  bundle exec rake agents:fetch50
  bundle exec rake agents:add_agents_to_agencies
  ```

* See pages
  ```
  localhost:3000
  localhost:3000/agents
  localhost:3000/agencies
  ```


Litiations

- No user login or session handling
- No real ui with webpack or similar (No static frontend application)
- No image or asset handling for profile pictures
- No task framwork or caching
- No reloading on update requests
- Not the latest Rails
- Agency data is random for the agents
- Agent data extracted is limited to 50 no pagination of results