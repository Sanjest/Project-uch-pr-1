//======================================================
//===    Найти свободную ячейку в массиве букашек  =====
int Empty(){
  // начинаем с индекса 1, так как букашка с индексом 0
  // является связующей
  for( int i = 1; i<count; i++) { if( ants[i].state==0 ) return i ; }
  return 0;
}

//==================================================================
// функция возвращает индекс найденного ресурса из массива ресурсов
int getResourceIndex(int kind, float X, float Y){
  for( int i=0; i<rcount; i++ ){ 
    if(food[i].kind==kind){
      if(abs(X-food[i].X) < 50 && abs(Y-food[i].Y) < 50){ return i; }
    }
  }
  return 200; // ничего не нашли
}
