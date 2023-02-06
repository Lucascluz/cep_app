import 'package:dio/dio.dart';
import 'cep_repository.dart';

class CepRepositoryImpl implements CepRepository {
  Future getCep(String cep) async {
    final result = await Dio().get('https://viacep.com.br/ws/$cep/json');
    result.data;
  }
}
