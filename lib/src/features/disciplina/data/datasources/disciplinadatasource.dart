import 'package:student_planner_frontend/src/core/network/api_client.dart';

class Disciplinadatasource {
  final ApiClient _apiClient;
  Disciplinadatasource(this._apiClient);

  Future<List<Map<String, dynamic>>> getDisciplinas() async {
    final response = await _apiClient.get('/disciplinas');
    return List<Map<String, dynamic>>.from(response);
  }

  Future<Map<String, dynamic>> getDisciplinaById(String id) async {
    final response = await _apiClient.get('/disciplinas/$id');
    return Map<String, dynamic>.from(response);
  }

  Future<void> saveDisciplina(Map<String, dynamic> disciplina) async {
    await _apiClient.post('/disciplinas', data: disciplina);
  }

  Future<void> updateDisciplina(
    String id,
    Map<String, dynamic> disciplina,
  ) async {
    await _apiClient.put('/disciplinas/$id', data: disciplina);
  }

  Future<void> deleteDisciplina(String id) async {
    await _apiClient.delete('/disciplinas/$id');
  }
}
