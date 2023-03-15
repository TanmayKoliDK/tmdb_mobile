part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsEvent with _$MovieDetailsEvent {
 const factory MovieDetailsEvent.init() = _Init;
  const factory MovieDetailsEvent.onload() = _Onload;
 

  const factory MovieDetailsEvent.emitFromAnywhere({required MovieDetailsState state}) =
      _EmitFromAnywhere;
}