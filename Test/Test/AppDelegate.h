//
//  AppDelegate.h
//  Test
//
//  Created by 전다희 on 2021/10/25.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


// 인터페이스 선언
// AppDelegate.m에 인터페이스를 선언했을 때는 main.m에서 MyClass가 인식되지 않았다
// 선언은 보통 헤더에 하기 때문에, 헤더파일에서 MyClass에 대한 정보를 찾기 때문이 아닐지 ?
@interface MyClass : NSObject
{
    // 여기에 인스턴스 변수 선언 (데이터는 클래스 안에 저장: 캡슐화)
}


-(int) ddd: (int)x; // 선언
-(NSInteger) addTest :(NSInteger)nAdd;

@end
