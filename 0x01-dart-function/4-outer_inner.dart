String inner() {
  return "Hello Agent name your id is 000";
}

void outer(String name, String id) {
  List<String> agent_names = name.split(' ');
  String agent_name = '${agent_names.elementAt(1).substring(0,1)}.${agent_names.elementAt(0)}';
  print(inner().replaceAll('name', agent_name).replaceAll('000', id));
}

