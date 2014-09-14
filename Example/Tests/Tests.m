//
//  InsightExchangeTests.m
//  InsightExchangeTests
//
//  Created by winfred on 09/13/2014.
//  Copyright (c) 2014 Liberatus Software, LLC. All rights reserved.
//

#import "InsightExchange.h"
#import <Nocilla.h>

SpecBegin(InitialSpecs)

beforeAll(^{
    [[LSNocilla sharedInstance] start];
});
afterAll(^{
    [[LSNocilla sharedInstance] stop];
});
afterEach(^{
    [[LSNocilla sharedInstance] clearStubs];
});

describe(@"InsightExchange initialization", ^{

    it(@"takes API key as a parameter", ^{
        InsightExchange *exchange = [[InsightExchange alloc] initWithApiKey:@"abc123"];
        expect(exchange.apiKey).to.equal(@"abc123");
    });

});

describe(@"InsightExchange#identify", ^{
    
    it(@"POSTS data to server", ^{
// Why don't these stubs work? =(
//
//        stubRequest(@"POST", @"http://localhost:5000/sellers/api/users").
//        withHeaders(@{ @"Accept": @"application/json", @"Content-Type": @"application/json" }).
//        withBody(@"{\"api_token\":\"abc123\",\"user\":{\"email\":\"myuser@gmail.com\"}}");
//
//       InsightExchange *exchange = [[InsightExchange alloc] initWithApiKey:@"abc123"];
//        [exchange identify:@"myuser@gmail.com"];
    });
    
    it(@"throws up without an API key", ^{
        InsightExchange *exchange = [[InsightExchange alloc] init];
        expect(^{
            [exchange identify:@"myuser@gmail.com"];
        }).to.raise(@"Missing API Key");
    });
});

describe(@"InsightExchange#publish", ^{
    
    it(@"POSTS data to server", ^{
// Why don't these stubs work? =(
//
//        stubRequest(@"POST", @"http://localhost:5000/sellers/api/insights").
//        withHeaders(@{ @"Accept": @"application/json", @"Content-Type": @"application/json" }).
//        withBody(@"{\"insight\":{\"name\":\"Created Popular Poem\",\"email\":\"myuser@gmail.com\"},\"api_token\":\"abc123\"}");
//
//        InsightExchange *exchange = [[InsightExchange alloc] initWithApiKey:@"abc123"];
//        [exchange publishInsight:@"Created Popular Poem" forEmail:@"myuser@gmail.com"];
    });
    
    it(@"throws up without an API key", ^{
        InsightExchange *exchange = [[InsightExchange alloc] init];
        expect(^{
            [exchange publishInsight:@"Created Popular Poem" forEmail:@"myuser@gmail.com"];
        }).to.raise(@"Missing API Key");
    });
});

SpecEnd
