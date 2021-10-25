//
//  main.m
//  Test
//
//  Created by 전다희 on 2021/10/25.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

// 필기
int main(int argc, char * argv[]) {
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
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
