class Bean {
  String name;
  int age;

  Bean(this.name, this.age);

  @override
  String toString() {
    return 'Bean{name: $name, age: $age}';
  }
}
