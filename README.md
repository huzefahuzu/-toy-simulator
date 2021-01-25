# Toy Robot Simulator

A toy robot can be placed on a 5 x 5 table and moved around on the table. Users can either manually enter commands or load commands via a file.

## System Dependencies & Configuration
`ruby => 2.3.3`

To check your version run:

```
$ ruby -v
```

`bundler` (to install any ruby gems required)

To check your version run:

```
$ bundler -v
```

If it's not installed, run

```
$ gem install bundler
```

## Application Installation Instructions
1. Clone or download this repository
2. If you are using the test files, install any required ruby gems (e.g. rake and test-unit)

```
$ bundle install
```

## Operating Instructions

```
$ ruby ./lib/toy_robot_sim.rb
```

## Testing Instructions

To run the test suite, run the command (in /toyRobotSimulator)

```
$ rake test
```

