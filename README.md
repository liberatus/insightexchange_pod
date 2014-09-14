# InsightExchange

[![CI Status](http://img.shields.io/travis/winfred/InsightExchange.svg?style=flat)](https://travis-ci.org/winfred/InsightExchange)
[![Version](https://img.shields.io/cocoapods/v/InsightExchange.svg?style=flat)](http://cocoadocs.org/docsets/InsightExchange)
[![License](https://img.shields.io/cocoapods/l/InsightExchange.svg?style=flat)](http://cocoadocs.org/docsets/InsightExchange)
[![Platform](https://img.shields.io/cocoapods/p/InsightExchange.svg?style=flat)](http://cocoadocs.org/docsets/InsightExchange)

InsightExchange is the world's first realtime marketplace platform for exchanging meaningful customer insights. We provide a standard interface for app builders to sell data about a customer to a wide array of businesses who share the same customer.

Managing independent integrations is complicated, and forming business relationships even more-so. Our platform aims to forge a new class of valuable low-cost integrations enabled through a standard API, a bidding/approval mechanism, and a fire-hose of actionable sales insights aggregated from across the app ecosystem.

## Usage

This library is a simple wrapper for the [InsightExchange API](http://insightexchange.co/for_developers/docs), which has two primary functions right now: 

1. Identifying a user resource to improve matching with potential buyers
2. Publishing an insight about a user for sale on the market (as approved by us and you).

First, initialize the client with an API key like so:

```
InsightExchange *exchange = [[InsightExchange alloc] initWithApiKey:@"YOUR API KEY"];
```


## Identifying Users

The more of your users that we know about, the better we can match you with someone that will pay for your data and deliver additional value to the user in another context. [See the official documentation for more information on how this works.](http://insightexchange.co/for_developers/docs#users)

```
[exchange identify:@"youruser@yourusersmail.com"];

```

## Publishing Insights

Once we start receiving insights from you, we will review them privately and build a bigger picture around what kind of data you can offer. We may shop the concept of your data around anonymously in order to gauge interest and solicit buyers, but no business will see specifics about you or your data until you approve a bid deal from them. Your data is safe with us.

```
[exchange publishInsight:@"Walked the dog" forEmail:@"youruser@yourusersmail.com"];

```

## Installation

InsightExchange is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "InsightExchange"

## Author

winfred, winfred@insightexchange.co

## License

InsightExchange is available under the MIT license. See the LICENSE file for more info.

