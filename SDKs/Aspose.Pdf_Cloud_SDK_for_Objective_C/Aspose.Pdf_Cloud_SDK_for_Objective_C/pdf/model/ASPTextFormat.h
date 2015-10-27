#import <Foundation/Foundation.h>
#import "ASPObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "ASPLink.h"
#import "ASPColor.h"


@protocol ASPTextFormat
@end

@interface ASPTextFormat : ASPObject


@property(nonatomic) ASPColor* color;

@property(nonatomic) NSNumber* fontSize;

@property(nonatomic) NSString* fontName;

@property(nonatomic) NSArray<ASPLink>* links;

@end