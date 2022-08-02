
# Guild Auction Manager

## Introduction

In the game **Elder Scrolls Online** players use **guilds** to join efforts to crowdfund certain in-game benefits, such as hiring a **Guild Trader** every week that will allow them to sell their adventure's loot to other players, but this does not come cheap.

**Auctions** are one way for the Guilds to gather funds from its members by auctioning certain special items that are donated by other guild members.

Guild Auction Events are often held **in-game**, where players use features such as voice-chat and text-chat to interact during the event. This comes with limitations such as maximum players allowed in voice-chat or long standing known issues. Also, not all players may be available at the time of the Auction considering different time zones or having a busy schedule.

## Objectives

-   Provide an alternative auction process where members have a greater range of time to participate in Guild Auction Events

-   Provide a better management and collaboration tool for auction organizers

-   Increase transparency of total amounts collected and member participation

## Description

The application allows to organize and manage Guild Auctions allowing Admins to collaborate on Auction Drafts and Members to have a more dynamic experience during Open Auctions placing bids and seeing updates in realtime

Here are some of the features:

-   Members can sign up and log in to the application using email and password. They must be logged in to access.
-   Members can view Auctions (Completed and Scheduled) and view the Auction Items each have along with any Bid history messages
- Members & Admins can place Bids on Auctions
	- TODO: Add validation - Bids can only be placed on Auction Items when the Auction status is In Progress
- Admins can create new Auctions and add Auction Items to Auctions
    - TODO: Add validation - Auction Items cannot be added or modified on Cancelled or Completed Auctions.
- Admins can create and edit Items and Categories so they can be available when creating or updating Auction Items
- When users are viewing the Auction Item Details page, any new Bids added for that item will be added to their page in realtime. ActionCable.
- TODO: Add CSS Framework
- TODO: Add Unit Testing
- TODO: Add Job infrastructure (Active Job)

## Challenges faced during the project

- Getting the websockets to work was a bit confusing at first since ActionCable was not working properly until I setup Redis. Once this was running, setting up the channels and messages was not complicated.

-   When transitioning the project from sqlite3 to Postgresql, there were some configuration issues on my machine that took a while to resolve. This was a step required to make a deployment to Heroku since sqlite3 is not supported. I’ll take some more time to follow-up my learning on other deployment options.
    - TODO: Deploy the application

## Run Locally

The project uses the following:
    - Ruby version 3.1.2
    - Redis for ActionCable
    - Devise for Authentication
    - Pundit for Authorization
    - main branch uses sqlite3 database

To clone this project and run it on your own computer, use the following commands:

    git clone https://github.com/iqrivas/guild-auction-manager.git

    # Go into the repository
	$ cd guild-auction-manager

    # Install dependencies
    $ bundle install

You will need some servers running for the app to work:

    # Start a Rails Server
    $ rails server

    # Start the Redis Server
    $ redis-server