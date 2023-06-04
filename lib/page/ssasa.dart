
void main(){
  var merg = Merges.fromValue([1,2,3,4,4], [2,5,7,8]);
  merg.toString();
  var newmerg = merg.copyWith([1,2,3]);
 var sortlist =  merg.mergeTwoSortedList();
 print(sortlist);
}
class Merges{
  List<int> listOne;
  List<int> listTwo;

  Merges(this.listOne, this.listTwo);

  factory Merges.fromValue( List<int> listOne, List<int> listTwo){
    return Merges(listOne, listTwo);
  }

  @override
  String toString() {
    return 'Merges{listOne: $listOne, listTwo: $listTwo}';
  }
  @override
  dynamic noSuchMethod(Invocation invocation) {
    print('error method');

    return super.noSuchMethod(invocation);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Merges &&
          runtimeType == other.runtimeType &&
          listOne == other.listOne &&
          listTwo == other.listTwo;

  @override
  int get hashCode => listOne.hashCode ^ listTwo.hashCode;

  Merges copyWith(List<int> list, {List<int>? listOne, List<int>? listTwo}) {
    return Merges(
      listOne ?? this.listOne,
      listTwo ?? this.listTwo,
    );
  }

  List<int> mergeTwoSortedList(){
    List<int> list = [...listOne,...listTwo];
    bubbleSort(list);
    return list;
  }
}
void bubbleSort(List<int> list) {
  final length = list.length;

  for (var i = 0; i < length - 1; i++) {
    for (var j = 0; j < length - i - 1; j++) {
      if (list[j] > list[j + 1]) {

        final temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}
