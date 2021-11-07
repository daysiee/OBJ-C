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

/*
 
 [프로퍼티]
 프로퍼티의 수식어는 세터 여부/ 생존기간/멀티스레드 여부에 따라 달라진다
 @property (strong, nonatomic) IBOutlet UITextField *tempText; // 가장 많이 사용

 *세터
 기본적으론 (readwrite) 디폴트

 *생존기간
 기본적으로 (strong) 디폴트
 strong
 - 객체에 소유권
 - retain
 - 보통 클래스의 인스턴스에 사용
 weak
 - 소유권 없음, 대상 객체가 해제되면 nil 됨
 - 주소만 참조
 - assign
 - 기본 자료형의 경우 적합

 *멀티스레드 고려
 기본적으로 (atomic) 디폴트
 atomic
 - 프로퍼티 접근 시 lock과 unlock 반복
 - 멀티스레드 환경에서 공유되는 리소스에 사용
 nonatomic
 - 일반적인 환경으로 빠름


 [소스 줄이기]
 *Obj-c의 getter는 보통 접두사 get을 생략한다
 : - (int) age;

 *property, synthesize 구문으로 대체
 : 자동으로 getter/setter 생성
 - (void) setAge: (int)a;
 - (int) age;                             =>      @property int age;
  - (void) setAge: (int)a
 {
     age = a;
 }
 - (int) age
 {
     return age;
 }                                             =>       @synthesize age;
   
 이 때, property 구문에서 이미 자료형을 선언했으므로
 synthesize 구문에서는 따로 적어주지 않는다.

 *property, synthesize 구문 장점
 1)dot notation
 : poperty/synthesize 구문 사용 시 dot notation을 사용할 수 있다

 Dog * happy = [[Dog alloc] init];
 happy.age = 5;  // [happy setAge:5 ]

 2)인스턴스 변수 선언 생략 가능
 : @property int age; 하나로 대체 가능

 3)synthesize 구문 생략 가능
 : 최신 obj-c에서는 디폴트로 선언되기 때문
 => 단, 이 경우 클래수 내부(.m)에서 프로퍼티 접근 시 속성명 앞에 _를 꼭 붙여야 한다!

 - (void) show
 {
     NSLog(@“%d”, _age);
 }
 
 */

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
