void main(List<String> args) {
  int nb = int.parse(args.first);
  if (nb < 0) {
    print('${nb} is negative');
  } else if (nb == 0) {
    print('${nb} is zero');
  } else if (nb > 0) {
    print('${nb} is positive');
  }
}