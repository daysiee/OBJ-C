//
//  ViewController.m
//  Test
//
//  Created by 전다희 on 2021/10/25.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "TestClass.h"


@interface ViewController ()

@property (nonatomic, strong) MyClass * myObj;
@property (nonatomic, strong) TestClass * testClass;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"");

}


- (IBAction)btnClick:(id)sender {
    if (!self.myObj) {
        NSLog(@"New");
        self.myObj = [[MyClass alloc]init]; // 인스턴스 생성 및 초기화
    }
    
    NSInteger nTestLog = [self.myObj addTest:10];
    
    NSLog(@"결과 = nTestLog : %ld", nTestLog);
    
    // alloc은 클래스 메소드(=팩토리 메소드), 메모리 할당
    // init은 인스턴스 메소드, 초기화
    /*
     클래스 메소드는 객체 생성과 같은 클래스 차원의 일을 수행하며, 인스턴스 변수에 접근 불가 (아직 객체 생성 전이므로!)
     또한, 객체를 만들기 때문에 팩토리 메소드라고도 한다.
     즉 클래스는 인스턴스 변수와 메소드를 정의한 명세서, 설계도와 같으며
     객체는 실제 데이터를 가지고 동작중인 인스턴스인 것이다.
    */
    int r = [self.myObj ddd:5]; // 호출
    NSLog(@"결과 = %d", r);
}


@end
