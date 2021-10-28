//
//  main.m
//  Test
//
//  Created by 전다희 on 2021/10/25.
//

// UIKit.h에 Foundation.h도 import 되어 있다
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

// 필기
int main(int argc, char * argv[]) {
    // obj-c에서 클래스 인스턴스는 반드시 포인터형으로 생성한다
    NSString * appDelegateClassName;
    /*
     - xcode에서 제공하는 기본 소스 형태
     - @autoreleasepool은 ARC 사용 여부와 관계없이 사용할 수 있으며,
     - NSAutoreleasePool 인스턴스를 이용하는 방법보다 효율적 (NSAutorelasePool은 빌드 옵션에서 ARC 적용 시 사용불가)
    */
    @autoreleasepool {
        // 블록 내부에 원하는 코드 작성
        // 블록 내부 리소스들은 필요가 없어진 시점에 한꺼번에 메모리 release
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        // obj-c에서 논리형은 값으로 YES 또는 NO를 가진다
        BOOL boolValue = NO;
        // NSLog는 출력일자 및 시간, 파일명[라인수] 를 함께 리턴한다
        NSLog(@"Bool value %@", boolValue ? @"YES" : @"NO");
        
        MyClass *myObj = [[MyClass alloc]init]; // 인스턴스 생성 및 초기화
        // alloc은 클래스 메소드(=팩토리 메소드), 메모리 할당
        // init은 인스턴스 메소드, 초기화
        /*
         클래스 메소드는 객체 생성과 같은 클래스 차원의 일을 수행하며, 인스턴스 변수에 접근 불가 (아직 객체 생성 전이므로!)
         또한, 객체를 만들기 때문에 팩토리 메소드라고도 한다.
         즉 클래스는 인스턴스 변수와 메소드를 정의한 명세서, 설계도와 같으며
         객체는 실제 데이터를 가지고 동작중인 인스턴스인 것이다.
        */
        int r = [myObj ddd:5]; // 호출
        NSLog(@"결과 = %d", r);
        
        // NSLog는 앱을 첫 빌드했을 때만 출력되었으며, 이 후 앱을 백-포 또는 종료 후 재실행하여도 출력되지 않았다. 이유는 ?
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
