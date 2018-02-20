# sample-swift-mvvm
[![License](http://img.shields.io/badge/License-MIT-green.svg?style=flat)](https://github.com/clintjang/JWSBoltsSwiftSample/blob/master/LICENSE) [![Swift 4](https://img.shields.io/badge/swift-4.0-orange.svg?style=flat)](https://swift.org) 

This is MVVM pattern testing with Swift.

.... I'm still practicing.

# MVVM의 과거
Microsoft architects인 Ken Cooper와 Ted Peters가 고안했었다고 합니다.
이후 Windows Presentation Foundation (WPF) (Microsoft의 .NET 그래픽 시스템)과 Silverlight (WPF의 인터넷 응용 프로그램 파생물)에 통합되었고, John Gossman의 블로그에 의해 2005년 에서 MVVM을 발표되었다고 합니다.
> 이후 다양하게 파생되어진 것 같습니다. 

# MVVM 란?
MVVM(Model-view-viewmodel) 패턴은 소프트웨어 아키텍처 패턴입니다.
> 비슷한 용어 (model-view-binder), 인터페이스의 이벤트 중심 프로그래밍을 단순화하기 위한 목적을 가지고 있습니다.

<pre>
Model-View-ViewModel 패턴의 약자입니다.

M (Model)
- 실제 상태 데이터 모델, 접근 할 데이터
V (View)
- 모양, 레이아웃
VM (ViewModel)
- 개체를 쉽게 관리하기 위함
- 데이터 개체를 변환하는 역활
- 화면 표현의 대부분을 처리

그리고 Binder 개념이 내포되어있어서, 데이터와 커멘드바인딩(command-binding, Declarative data)가 뷰 모델과 뷰을 데이터가 동기화할 의무를 없도록 만듭니다. 실행을 하게 하고, 속성이 연결되어있어서 속성값 변경시 뷰에 반영되도록 합니다.

MVVM 패턴의 소스를 처음 접하신다면, VM 부터 분석해 나가시면 보다 수월하지 않을 까 싶습니다.
※ 개체 : 전체나 집단에 상대하여 하나하나의 낱개를 이르는 말.
</pre>

## MVVM 상세
### 흐름도
<img width="480" height="360" src="/Image/mvvm흐름도임.png"></img>

### 계층으로 보면
<img width="480" height="360" src="/Image/mvvm계층도임.png"></img>

## 소스 구성
<table style="width:100%">
  <tr>
	<th>구조</th> 
    <th>실행 전</th>
    <th>실행 후</th> 
  </tr>
  <tr>
  	<td><img width="268" height="480" src="/Image/structure_00.png"></img></td>
    <td><img width="268" height="480" src="/Image/run_00.png"></img></td>
    <td><img width="268" height="480" src="/Image/run_01.png"></img></td> 
  </tr>
</table>

### 링크
- [MVVM 패턴에 대해서...](https://blog.outsider.ne.kr/672) : 내용은 많치 않치만, MVC, MVP등과 비교하며 쉽게 설명되어 있어서 이해하는 데 많은 도움이 됩니다. 
- [MVC, MVP, MVVM 비교](https://magi82.github.io/android-mvc-mvp-mvvm/) : 구체적이고 역시 MVC, MVP와 비교하며 생각할 시간을 가지게 해줍니다.

### etc
...셈플링 해보는 중.. 연습중, 테스팅, 정리중, 고민중, 생각중