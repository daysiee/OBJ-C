//
//  AppDelegate.m
//  Test
//
//  Created by 전다희 on 2021/10/25.
//

#import "AppDelegate.h"

/*
    [클래스 확장]
    - m파일에 있는 @interface ~ @end는 h파일에 있는 것과는 다르다!
    - 괄호 안에는 보통 카테고리 명을 쓰며, 빈 괄호는 카테고리의 특별한 경우로 class extension이라 한다
    - 자동으로 생성되나, 필요 없는 경우 생략 가능하다
*/

@interface AppDelegate ()
// 클래스 내부에서만 사용하는 private 메소드를 선언한다
@end

@implementation AppDelegate

// 인스턴스 메소드 앞에 '-'가 붙는다
// 클래스 메소드, 스태틱의 경우 '+'
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle

// 함수 인자는 :로 구분하며, 두번째 파라미터부터는 파라미터 레이블(이름)을 반드시 지정해야 한다
- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"Test"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    // Replace this implementation with code to handle the error appropriately.
                    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    
                    /*
                     Typical reasons for an error here include:
                     * The parent directory does not exist, cannot be created, or disallows writing.
                     * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                     * The device is out of space.
                     * The store could not be migrated to the current model version.
                     Check the error message to determine what the actual problem was.
                    */
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

@end


@interface MyClass ()

@property (nonatomic, assign) NSInteger nTest;

@end

// 클래스 구현
@implementation MyClass

- (int) ddd: (int) x // 정의
{
    return (x*2);
}

-(NSInteger) addTest :(NSInteger)nAdd
{
    self.nTest += nAdd;
    return  self.nTest;
}

@end
