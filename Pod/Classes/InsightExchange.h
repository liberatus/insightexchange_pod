//
//  InsightExchange.h
//  Pods
//
//  Created by Winfred Nadeau on 9/13/14.
//
//

#import <Foundation/Foundation.h>

//#define kInsightExchangeEndpoint @"https://secure.insightexchange.co/sellers/api/"
#define kInsightExchangeEndpoint @"http://localhost:5000/sellers/api/"

@interface InsightExchange : NSObject

@property (nonatomic, strong) NSString *apiKey;

- (InsightExchange *)initWithApiKey:(NSString *)apiKey;
- (void)identify:(NSString *)email;
- (void)publishInsight:(NSString *)insight forEmail:(NSString *)email;

@end
