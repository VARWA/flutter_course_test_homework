import 'package:graphql_flutter/graphql_flutter.dart';

Future<GraphQLClient> createClient({String? token}) async {
  // 1. Инициализация хранилища на диске (нужна один раз при старте)
  await initHiveForFlutter();

  // 2. Ссылки в цепочке
  // Учебный «Заводской API». Для Android-эмулятора: http://10.0.2.2:4000/graphql
  final httpLink = HttpLink('http://localhost:4000/graphql');

  final authLink = AuthLink(
    getToken: () async => token == null ? null : 'Bearer $token',
  );

  final link = authLink.concat(httpLink);

  // 3. Клиент
  return GraphQLClient(
    link: link,
    cache: GraphQLCache(store: HiveStore()),
    // Не выбрасывать данные, если в ответе есть и data, и errors (раздел 6)
    defaultPolicies: DefaultPolicies(
      query: Policies(error: ErrorPolicy.all),
      watchQuery: Policies(error: ErrorPolicy.all),
    ),
  );
}
