import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnunciosRecord extends FirestoreRecord {
  AnunciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ong" field.
  String? _ong;
  String get ong => _ong ?? '';
  bool hasOng() => _ong != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  bool hasCelular() => _celular != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  void _initializeFields() {
    _ong = snapshotData['ong'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _celular = snapshotData['celular'] as String?;
    _descricao = snapshotData['descricao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios');

  static Stream<AnunciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnunciosRecord.fromSnapshot(s));

  static Future<AnunciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnunciosRecord.fromSnapshot(s));

  static AnunciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnunciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnunciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnunciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnunciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnunciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnunciosRecordData({
  String? ong,
  String? endereco,
  String? celular,
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ong': ong,
      'endereco': endereco,
      'celular': celular,
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnunciosRecordDocumentEquality implements Equality<AnunciosRecord> {
  const AnunciosRecordDocumentEquality();

  @override
  bool equals(AnunciosRecord? e1, AnunciosRecord? e2) {
    return e1?.ong == e2?.ong &&
        e1?.endereco == e2?.endereco &&
        e1?.celular == e2?.celular &&
        e1?.descricao == e2?.descricao;
  }

  @override
  int hash(AnunciosRecord? e) => const ListEquality()
      .hash([e?.ong, e?.endereco, e?.celular, e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is AnunciosRecord;
}
