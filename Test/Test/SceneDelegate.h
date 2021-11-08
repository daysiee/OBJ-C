//
//  SceneDelegate.h
//  Test
//
//  Created by 전다희 on 2021/10/25.
//

#import <UIKit/UIKit.h>

@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>

@property (strong, nonatomic) UIWindow * window;

@end

/*
[Delegate]
- 다른 객체를 대신해서 동작하는 객체
- 델리게이트 패턴
: 하나의 객체가 모든 일을 처리하는 것이 아닌, 처리 해야 할 일의 일부를 다른 객체에 넘기는 것
- 델리게이트로 선언된 객체는(보통 내가 만든 클래스) 자신을 임명한 객체가 일을 도와달라고 하면(테이블뷰, 피커뷰 등)
   지정된 메서드를 통하여 처리해 준다
- 보통 프로토콜을 사용한다

[Protocol]
- 특정 클래스와 관계성이 없는, 선언만 된 메소드 집합
- 델리게이트에서 사용한다
- 프로토콜에 선언된 메소드를 정의하면, 그 클래스를 ‘프로토콜을 준수’한다고 한다

// Runnable.h
@protocol Runnable <NSObject> // NSObject 프토콜도 상속
@required
- (void) run; // 반드시 구현해야 하는 부분
@optional
- (void) walk; // 필요에 따라 구현
@end

// Man.h
#import “Runnable.h”
@interface Man:NSObject <Runnable> // 프로토콜 채택
@end

// Man.m
#import “Man.h”
@implementation Man
- (void) run{
    NSLog(@“Running”) // 프로토콜 준수
}
@end

// main.m
int main()
{
    Man *han = [[Man alloc] init];
    [han run];

}

[NSNumber]
- 상수(리터럴): 소스 코드에서 고정된 값
- 초기화 방법
// 옛날 방식
NSNumber * number = [NSNumber numberWithInt:512]
// 최근 방식
NSNumber * number = @512.123f;

[NSArray]
// 옛날 방식
NsArray *carMakes;
carMakes = [[NSArray alloc]
                initWithObjects: @“Chevy”,
                @“BMW”,
                @“Volvo”,
                @“Smart”, nil];
// 최근 방식
carMakes = @[@“Chevy”, @“BMW”, @“Volvo”, @“Smart” ]; // 배열 리터럴
// 배열 항목 접근
NSString *firstCar = carMakes[0];
// 가변 배열은 mutableCopy 메소드를 통해 생성
NSMutableArray * carMakes = [@[@“Chevy”, @“BMW”, @“Toyota”, @“Volvo”, @“Smart” ] mutableCopy];

[NSDictionary]
NSDictionary *bookListing = @{key1: object1, key2: object2, key3: object3}
// key1에 대한 객체 추출
bookObject = bookListing[key1];
*/
