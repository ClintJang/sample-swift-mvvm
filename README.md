# swift mvvm sample
[![License](http://img.shields.io/badge/License-MIT-green.svg?style=flat)](https://github.com/clintjang/JWSBoltsSwiftSample/blob/master/LICENSE) [![Swift 4](https://img.shields.io/badge/swift-4.0-orange.svg?style=flat)](https://swift.org) 

Use Swift to study, note, and sample MVVM pattern.

# MVVM의 과거
Microsoft architects인 Ken Cooper와 Ted Peters가 고안했었다고 합니다.
이후 Windows Presentation Foundation (WPF) (Microsoft의 .NET 그래픽 시스템)과 Silverlight (WPF의 인터넷 응용 프로그램 확장)에 통합되었고, John Gossman의 블로그에 의해 2005년 에서 MVVM을 발표되었다고 합니다.
> 이후 다양하게 파생?되어진 것 같습니다. 

# MVVM 란?
MVVM(Model-view-viewmodel) 패턴은 소프트웨어 아키텍처 패턴입니다.
> 비슷한 용어 (model-view-binder), 인터페이스의 이벤트 중심 프로그래밍을 단순화하기 위한 목적을 가지고 있습니다.

<pre>
Model-View-ViewModel 패턴의 약자입니다.

M (Model)
- 실제 상태 데이터 모델, 접근 할 데이터

V (View)
- 모양, 레이아웃
- 추상화
- 재사용성과 테스트 용이성

VM (ViewModel)
- 개체를 쉽게 관리하기 위함
- 데이터 개체를 변환하는 역활
- 화면 표현의 대부분을 처리

그리고 Binder 개념이 내포되어있어서, 데이터와 커멘드바인딩(command-binding, Declarative data)가 
뷰 모델과 뷰을 데이터가 동기화할 의무를 없도록 만듭니다. 
이벤트 실행과, 속성이 연결되어있어서 속성값 변경시 뷰에 반영되도록 합니다.


※ 개체 : 전체나 집단에 상대하여 하나하나의 낱개를 이르는 말.
</pre>

## MVVM 상세
### 흐름도
<img width="480" height="360" src="/Image/mvvm흐름도임.png"></img>

### 계층으로 보면
<img width="480" height="360" src="/Image/mvvm계층도임.png"></img>

### 프로젝트 안에서의 모습을 상상하면..
<img width="480" height="360" src="/Image/mvvm많이많이.png"></img>

### 생각
<pre>
1. MVVM 패턴의 소스를 처음 접하신다면, ViewModel 부터 분석해 나가시면 보다 수월하지 않을 까 싶습니다.
2. View는 디자이너 영역이라는 표현의 글도 읽었습니다. 그만큼 화면 표현에만 집중합니다.
3. Unit Test 도입이 수월하다고 합니다. 느낌은 오는 데, 실제 해봐야 확실히 안다 할 수 있을 것 같네요. (이것은 언제 할지.. 일단 후순위)
   - 테스트 주도 개발(Test-driven development) 도입도 쉽다.
4. 개발속도에 대해 생각하면, 그냥 패턴없이 개발하면 보다 결과물이 빨리 나오죠.. 그러나 개발 속도 향상이 아닌 유지보수의 비용 감소에 그 목적이 있다는 의견을 읽었습니다.
5. 뷰의 추상화를 만드는 것이 핵심이라고 합니다. 뷰의 추상화는 재사용할 수 있고(reusable) 테스트하기 쉽다(testable)의 글을 읽었습니다.
6. 이벤트를 발생시킬때 ViewModel이 명령을 가집니다. 모델의 행위를 실행할 수 있습니다.
7. Controller 는 바인딩 하는데 핵심역활을 하는 것 같습니다. 데이터 바인딩에 의존하는 데 그역활을 적절하게 수행하는 역활을 할 것 같습니다.


</pre>

## 셈플 소스 구성
> 첫번째 셈플을 만들고 끝나면 두번째 셈플을 만들어 나가면서 여러형태의 셈플을 늘려나가며 MVVM 에 대해 셈플을 만들어보며 이해하려고 합니다.
<table style="width:100%">
  <tr>
	<th>구조</th> 
    <th>실행 전 (첫번째 셈플)<br>스토리보드</th>
    <th>실행 후 (첫번째 셈플)</th> 
  </tr>
  <tr>
  	<td><img width="268" height="480" src="/Image/structure_00.png"></img></td>
    <td><img width="268" height="480" src="/Image/run_00.png"></img></td>
    <td><img width="268" height="480" src="/Image/run_01.png"></img></td> 
  </tr>
</table>

### 링크
- [MVVM 아키텍처 패턴](https://justhackem.wordpress.com/2017/03/05/mvvm-architectural-pattern/) : 상세한 설명이 있습니다. 중요한 내용이라 생각합니다.
- [MVVM 패턴에 대해서...](https://blog.outsider.ne.kr/672) : 내용은 많치 않치만, MVC, MVP등과 비교하며 쉽게 설명되어 있어서 이해하는 데 많은 도움이 됩니다. 
- [MVC, MVP, MVVM 비교](https://magi82.github.io/android-mvc-mvp-mvvm/) : 구체적이고 역시 MVC, MVP와 비교하며 생각할 시간을 가지게 해줍니다.
- [mvvm-i-mvvm-패턴에-대한-기본-개념](https://happybono.wordpress.com/2017/10/10/mvvm-i-mvvm-%ED%8C%A8%ED%84%B4%EC%97%90-%EB%8C%80%ED%95%9C-%EA%B8%B0%EB%B3%B8-%EA%B0%9C%EB%85%90/) : 설명이 좋습니다.
- [MVVM Pattern을 사용하는 개발자를 위한 안내](http://kaki104.tistory.com/531) : Windows app 기준의 설명이지만..
### etc
아직........셈플링 해보는 중.. 2번째 셈플 테스팅중, 정리중, 고민중, 생각중