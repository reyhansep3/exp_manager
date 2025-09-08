import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_event.dart';
import 'package:exp_manager/presentation/home/manager/mode/lighting_mode_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LightingModeBloc extends Bloc<LightingModeEvent, LightingModeState>{
  LightingModeBloc() : super(const LightingModeState.lightMode()){
    on<LightingModeEvent>((event, emit){
      event.when(
        toggle: (){
          emit(
            state.when(
              lightMode: () => const LightingModeState.darkMode(), 
              darkMode:  () => const LightingModeState.lightMode(), 
            )
          );
        }, 
        setDark: () => const LightingModeState.lightMode(), 
        setLight: () => const LightingModeState.darkMode()
      );
    });
  }
  
}