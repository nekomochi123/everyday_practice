enum HappinessKind {
  luck('幸せ'),
  unluck('不幸'),
  ;

  const HappinessKind(this.condition);

  final String condition;
}
