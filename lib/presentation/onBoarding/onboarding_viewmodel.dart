import 'dart:async';

import 'package:learning/domain/model.dart';
import 'package:learning/presentation/base/base_View_Model.dart';
import 'package:learning/presentation/resources/assets_manager.dart';
import 'package:learning/presentation/resources/string_manager.dart';

class OnBoardingViewModel extends BaseViewModel with OnBoardingViewModelInputs,OnBoardingViewModelOutputs{
  
  final StreamController _streamController = StreamController<SliderViewObject >();
  
   late final List<SliderObject> _list ;
     int _currentIndex = 0;  


  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list =_getSliderData();

    _postDataToView();
  }

  @override
  int goNext() {
    int nextIndex = _currentIndex++;
    if (nextIndex >= _list.length) {
      _currentIndex = 0;
    }

  _postDataToView();
  return _currentIndex;
  }

  @override
  int goPrevious() {
     int previousIndex = _currentIndex--;
    if (previousIndex == -1) {
      _currentIndex = _list.length - 1;
    }
    
    _postDataToView();
    return _currentIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;

    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((sliderViewObject) => sliderViewObject);

List<SliderObject> _getSliderData() => [
        SliderObject(
            title: AppString.onBoardingTitile1,
            subtitle: AppString.onBoardingSubTitile1,
            images: ImageAssets.onBoardingLogo1),
        SliderObject(
            title: AppString.onBoardingTitile2,
            subtitle: AppString.onBoardingSubTitile2,
            images: ImageAssets.onBoardingLogo2),
        SliderObject(
            title: AppString.onBoardingTitile3,
            subtitle: AppString.onBoardingSubTitile3,
            images: ImageAssets.onBoardingLogo3),
        SliderObject(
            title: AppString.onBoardingTitile4,
            subtitle: AppString.onBoardingSubTitile4,
            images: ImageAssets.onBoardingLogo4),
      ];
      _postDataToView(){
        inputSliderViewObject.add(SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
      }

}

abstract class OnBoardingViewModelInputs{

  void goNext();
  void goPrevious();
  void onPageChanged(int index);
   
  Sink get inputSliderViewObject; // this is the way to add data to the stream.. stream input
}

abstract class OnBoardingViewModelOutputs{

  Stream<SliderViewObject> get outputSliderViewObject;
}


class SliderViewObject{
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this. sliderObject, this.numOfSlides, this.currentIndex);
}