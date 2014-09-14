//
//  InsightExchange.m
//  Pods
//
//  Created by Winfred Nadeau on 9/13/14.
//
//

#import "InsightExchange.h"

@implementation InsightExchange

@synthesize apiKey = _apiKey;

+ (NSOperationQueue *)sharedQueue
{
    static NSOperationQueue *_sharedQueue = nil;
    static dispatch_once_t oncePredicate;

    dispatch_once(&oncePredicate, ^{
        _sharedQueue = [[NSOperationQueue alloc] init];
    });
    return _sharedQueue;
}

- (InsightExchange *)initWithApiKey:(NSString *)apiKey
{
    InsightExchange *exchange = [self init];
    exchange.apiKey = apiKey;
    return exchange;
}

- (void)identify:(NSString *)email
{
    if (!self.apiKey) {
        [NSException raise:@"Missing API Key" format:nil];
    }
    [self postData:@{@"user": @{@"email": email}} toResource:@"users"];
}

- (void)publishInsight:(NSString *)insight forEmail:(NSString *)email
{
    if (!self.apiKey) {
        [NSException raise:@"Missing API Key" format:nil];
    }
    [self postData:@{@"insight": @{@"email": email, @"name": insight}} toResource:@"insights"];
}

- (void)postData:(NSDictionary *)data toResource:(NSString *)resourceName
{
    NSMutableURLRequest *request = [self requestForURLPath:resourceName];
    NSError *error = nil;
    NSMutableDictionary *postData = [[NSMutableDictionary alloc] init];
    [postData setObject:self.apiKey forKey:@"api_token"];
    [postData addEntriesFromDictionary:data];
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:postData options:0 error:&error];
    [request setHTTPBody:jsonData];
    

 
    [NSURLConnection sendAsynchronousRequest:request queue:[[self class] sharedQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        //What kind of feedback would we like?
        // In some ways this is just a 'fire and forget' situation
        
    }];
}

- (NSMutableURLRequest *)requestForURLPath:(NSString *)urlPath
{
    NSString *requestURL = [kInsightExchangeEndpoint stringByAppendingString:urlPath];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:requestURL]];
    [request setCachePolicy:NSURLRequestReloadIgnoringLocalCacheData];
    [request setHTTPShouldHandleCookies:NO];
    [request setTimeoutInterval:30];
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    return request;
}


@end
