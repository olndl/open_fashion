// import 'package:open_fashion/src/features/home/presentation/bloc/categories/categories_cubit.dart';
//
// class FilterCubit extends Cubit<FilterState> {
//   //final TodosRepository _repository;
//   final CategoriesCubit _categoriesCubit;
//
//   FilterCubit(this._categoriesCubit) : super(FilterInitial());
//
//   void addTodo(String text) {
//     if (text.isEmpty) {
//       emit(FilterError('empty value'));
//       return;
//     }
//     emit(FilterLoading());
//     _categoriesCubit.emit(state)
//
//     _repository
//         .addTodo(AddTodoRequest(title: text, isCompleted: false))
//         .then((value) {
//       _todosCubit.addTodo(value).whenComplete(() => emit(TodoAdded()));
//     });
//   }
// }
