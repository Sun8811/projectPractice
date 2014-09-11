...
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*--------------获取字符串长度-----------------*/
        NSString *string = @"Hello,world";
        NSLog(@"The length of string is %lu", [string length]);
        
        /*--------------C语言比较两个字符串-----------------*/
        char string1[] = "string!";
        char *p = "string1";
        if (strcmp(string1, p) == 0) {
            NSLog(@"string1 is equalto p");
        } else {
            NSLog(@"They are not same");
        }
        
        /*--------------OC语言比较两个字符串-----------------*/
        // isEqualToString方法
        NSString *aString01 = @"This is String100";
        NSString *aString02 = @"This is string99";
        BOOL result = [aString01 isEqualToString:aString02];
        NSLog(@"result:%d", result);
        
        // compare方法（compare方法返回三种值）
        // NSOrderedSame判断两者内容是否相同
        BOOL result1 = ([aString01 compare:aString02] == NSOrderedSame);
        NSLog(@"result1:%d", result1);
        // NSOrderedAscending判断两个字符串对象的大小（按字母顺序比较）
        BOOL result2 = ([aString01 compare:aString02] == NSOrderedAscending);
        NSLog(@"result2:%d", result2);
        // NSOrderedDecending判断两个字符串对象的大小 (按字母顺序比较)
        BOOL result3 = ([aString01 compare:aString02] == NSOrderedDescending);
        NSLog(@"result3:%d", result3);
        
        // 不考虑大小写比较字符串 1
        BOOL result4 = ([aString01 caseInsensitiveCompare:aString02] == NSOrderedSame);
        NSLog(@"result4:%d", result4);
        
        // 不考虑大小写比较字符串 2
        // NSCaseInsensitiveSearch:不区分大小写字符比较
        // NSNumericSearch:把字符当作数字来比较数值大小
        BOOL result5 = ([ aString01 compare:aString02 options:NSCaseInsensitiveSearch | NSNumericSearch ] == NSOrderedDescending);
        NSLog(@"result5:%d", result5);
        
        /*--------------改变字符串的大小写-----------------*/
        NSString *string03 = @"AString";
        NSString *string04 = @"String";
        NSLog(@"after uppercase sting03:%@", [string03 uppercaseString]);
        NSLog(@"after lowercase string04:%@", [string04 lowercaseString]);
        NSLog(@"capitalized string03:%@", [string03 capitalizedString]);
        
        /*字符串是否包含别的字符串*/
        // 判断字符串里面是否含有前缀
        NSString *fileName = @"draft-chapter.pages";
        if ([fileName hasPrefix:@"draft"]) {
            NSLog(@"It's a draft");
        }
        
        // 判断字符串里面是否含有后缀
        if ([fileName hasSuffix:@".pages"]) {
            NSLog(@"It's a pages file");
        }
        
        // 抽取子串
        NSString *string05 = @"This is a string";
        NSString *string06 = @"string";
        NSRange range = [string05 rangeOfString:string06];
        
        NSUInteger location = range.location;
        NSUInteger length = range.length;
        NSString *aString = [NSString stringWithFormat:@"Location is %lu, length is %lu", location, length];
        NSLog(@"aString:%@", aString);

        // －substringFromIndex:从字符串的指定位置开始（包括指定位置的字符）,并包括之后的全部字符
        NSString *string07 = @"This is a string";
        NSString *string08 = [string07 substringFromIndex:3];
        NSLog(@"string08:%@", string08);

        // －substringToIndex:从字符串的开头一直截取到指定的位置,但不包括该位置的字符
        NSString *string09 = [string07 substringToIndex:3];
        NSLog(@"string09:%@", string09);
        
        // -substringWithRange:按照range给出的位置和长度来截取子串
        NSString *string10 = [string07 substringWithRange:NSMakeRange(0, 6)];
        NSLog(@"string10:%@", string10);
        
        
        
    }
    return 0;
}
...
#import <Foundation/Foundation.h>
#import "QYPerson.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        QYPerson *p1 = [[QYPerson alloc] initWithName:@"zhangsan" andAge:18];
        QYPerson *p2 = [[QYPerson alloc] initWithName:@"lisi" andAge:19];
        QYPerson *p3 = [[QYPerson alloc] initWithName:@"wangwu" andAge:20];
        QYPerson *p4 = [[QYPerson alloc] initWithName:@"zhaoliu" andAge:21];
        
        /*----------------------创建NSDictionary－－－－－－－－－－－－－－－－*/
        //1.dictionaryWithObjectsAndKeys
        //NSDictionary *persons = [NSDictionary dictionaryWithObjectsAndKeys:p1,@"zhangsan",p2,@"lisi",p3,@"wangwu", nil];
        //2.字典字面常量语法
        NSDictionary *persons = @{@"zhangsan":p1, @"lisi":p2, @"wangwu":p3};
        NSLog(@"persons:%@", persons);
        
        /*－－－－－－－－－－－－－根据key获取字典里对应的对象-------------------*/
        //1.objectForKey
        QYPerson *somePerson = [persons objectForKey:@"lisi"];
        NSLog(@"lisi:%@", somePerson);
        //2.dict[key]
        QYPerson *anotherPerson = persons[@"wangwu"];
        NSLog(@"wangwu:%@", anotherPerson);
        
        /*---------------------创建可变字典NSMutableDictionary--------------------*/
        NSMutableDictionary *persons2 = [NSMutableDictionary dictionary];
        //通过其他的字典来给字典添加元素
        [persons2 addEntriesFromDictionary:persons];
        NSLog(@"persons2:%@", persons2);
        
        /*---------------------向字典里面添加元素---------------------------*/
        [persons2 setObject:p4 forKey:@"zhaoliu"];
        NSLog(@"persons2:%@", persons2);
        [persons2 setObject:p3 forKey:@"lisi"];
        NSLog(@"persons2:%@", persons2);
        
        /*---------------------根据key从字典里面删除对象---------------------*/
        [persons2 removeObjectForKey:@"lisi"];
        NSLog(@"persons2:%@", persons2);
        
        /*---------------------------NSNumber----------------------------*/
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        
        //装箱：
        //1. 使用工厂方法，创建NSNumber对象
        NSNumber *number = [NSNumber numberWithChar:'X'];
        [dict setObject:number forKey:@"char"];
        
        number = [NSNumber numberWithInt:2014];
        [dict setObject:number forKey:@"int"];
        
        NSLog(@"dict:%@", dict);
        
        //2.同过字面量语法，创建NSNumber对象
        number = @123.45f;
        [dict setObject:number forKey:@"float"];
        
        number = @YES;
        [dict setObject:number forKey:@"BOOL"];
        NSLog(@"dict:%@", dict);
        
        //开箱:
        number = [dict objectForKey:@"char"];
        char c = [number charValue];
        NSLog(@"===========  %c  ============", c);
        
        number = dict[@"int"];
        int d = [number intValue];
        NSLog(@"===========  %d  ============", d);
        
        /*---------------NSValue--------------*/
        //创建NSValue对象并装箱
        NSRect rect = NSMakeRect(90, 100, 80, 80);
        NSValue *value = [NSValue valueWithBytes:&rect objCType:@encode(NSRect)];
        [dict setObject:value forKey:@"rect"];
        NSLog(@"dict:%@", dict);
        
        //开箱
        NSRect anotherRect = {0};
        NSValue *anotherValue = dict[@"rect"];
        [anotherValue getValue:&anotherRect];
        NSLog(@"anotherRect is (%f,%f,%f,%f)", anotherRect.origin.x, anotherRect.origin.y, anotherRect.size.width, anotherRect.size.height);
        
        //cocoa提供的常用struct与NSValue之间转换的便捷方式
        // 装箱
        rect.size.height = 60;
        rect.size.width = 60;
        value = [NSValue valueWithRect:rect]; //装箱
        [dict setObject:value forKey:@"anotherRect"];
        NSLog(@"dict:%@", dict);
        
        // 开箱
        anotherValue = dict[@"anotherRect"];
        anotherRect = [anotherValue rectValue]; //开箱
        NSLog(@"anotherRect is (%f,%f,%f,%f)", anotherRect.origin.x, anotherRect.origin.y, anotherRect.size.width, anotherRect.size.height);
        
        /*-----------------------NSNull-------------------------*/
        [dict setObject:[NSNull null] forKey:@"Utopia"];
        if (dict[@"Utopia"] == [NSNull null]) {
            NSLog(@"Utopia is not exsist!");
        }
        
    }
    return 0;
}
...
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *home = nil;
        
        home = [@"~" stringByExpandingTildeInPath];
        NSLog(@"home:%@", home);
        
        NSMutableArray *files = [NSMutableArray arrayWithCapacity:40];
        
        for (NSString *filename in [fileManager enumeratorAtPath:home]) {
            if ([[filename pathExtension] isEqualToString:@"jpg"]) {
                [files addObject:filename];
            }

        }
        
        for (NSString *filename in files) {
            NSLog(@"%@", filename);
        }
    }
    return 0;
}
