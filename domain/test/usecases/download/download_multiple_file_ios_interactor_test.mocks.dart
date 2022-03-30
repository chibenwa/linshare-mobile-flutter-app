// Mocks generated by Mockito 5.0.17 from annotations
// in domain/test/usecases/download/download_multiple_file_ios_interactor_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dio/dio.dart' as _i7;
import 'package:domain/domain.dart' as _i3;
import 'package:domain/src/model/authentication/token.dart' as _i4;
import 'package:domain/src/model/flow/flow_file.dart' as _i2;
import 'package:domain/src/model/share/mailing_list_id.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeFlowFile_0 extends _i1.Fake implements _i2.FlowFile {}

class _FakeDocument_1 extends _i1.Fake implements _i3.Document {}

class _FakeDocumentDetails_2 extends _i1.Fake implements _i3.DocumentDetails {}

class _FakeToken_3 extends _i1.Fake implements _i4.Token {}

class _FakeUri_4 extends _i1.Fake implements Uri {}

/// A class which mocks [DocumentRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockDocumentRepository extends _i1.Mock
    implements _i3.DocumentRepository {
  MockDocumentRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FlowFile uploadChunks(_i3.FileInfo? fileInfo) =>
      (super.noSuchMethod(Invocation.method(#uploadChunks, [fileInfo]),
          returnValue: _FakeFlowFile_0()) as _i2.FlowFile);
  @override
  _i5.Future<List<_i3.Document>> getAll() =>
      (super.noSuchMethod(Invocation.method(#getAll, []),
              returnValue: Future<List<_i3.Document>>.value(<_i3.Document>[]))
          as _i5.Future<List<_i3.Document>>);
  @override
  _i5.Future<List<_i3.DownloadTaskId>> downloadDocuments(
          List<_i3.DocumentId>? documentIds,
          _i4.Token? token,
          Uri? baseUrl,
          _i3.APIVersionSupported? apiVersion) =>
      (super.noSuchMethod(
          Invocation.method(
              #downloadDocuments, [documentIds, token, baseUrl, apiVersion]),
          returnValue: Future<List<_i3.DownloadTaskId>>.value(
              <_i3.DownloadTaskId>[])) as _i5.Future<List<_i3.DownloadTaskId>>);
  @override
  _i5.Future<List<_i3.Share>> share(
          List<_i3.DocumentId>? documentIds,
          List<_i6.MailingListId>? mailingListIds,
          List<_i3.GenericUser>? recipients) =>
      (super.noSuchMethod(
          Invocation.method(#share, [documentIds, mailingListIds, recipients]),
          returnValue:
              Future<List<_i3.Share>>.value(<_i3.Share>[])) as _i5
          .Future<List<_i3.Share>>);
  @override
  _i5.Future<String> downloadDocumentIOS(_i3.Document? document,
          _i4.Token? token, Uri? baseUrl, _i7.CancelToken? cancelToken) =>
      (super.noSuchMethod(
          Invocation.method(
              #downloadDocumentIOS, [document, token, baseUrl, cancelToken]),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  _i5.Future<_i3.Document> remove(_i3.DocumentId? documentId) =>
      (super.noSuchMethod(Invocation.method(#remove, [documentId]),
              returnValue: Future<_i3.Document>.value(_FakeDocument_1()))
          as _i5.Future<_i3.Document>);
  @override
  _i5.Future<_i3.Document> rename(_i3.DocumentId? documentId,
          _i3.RenameDocumentRequest? renameDocumentRequest) =>
      (super.noSuchMethod(
              Invocation.method(#rename, [documentId, renameDocumentRequest]),
              returnValue: Future<_i3.Document>.value(_FakeDocument_1()))
          as _i5.Future<_i3.Document>);
  @override
  _i5.Future<List<_i3.Document>> copyToMySpace(_i3.CopyRequest? copyRequest) =>
      (super.noSuchMethod(Invocation.method(#copyToMySpace, [copyRequest]),
              returnValue: Future<List<_i3.Document>>.value(<_i3.Document>[]))
          as _i5.Future<List<_i3.Document>>);
  @override
  _i5.Future<String> downloadPreviewDocument(
          _i3.Document? document,
          _i3.DownloadPreviewType? downloadPreviewType,
          _i4.Token? token,
          Uri? baseUrl,
          _i7.CancelToken? cancelToken) =>
      (super.noSuchMethod(
          Invocation.method(#downloadPreviewDocument,
              [document, downloadPreviewType, token, baseUrl, cancelToken]),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  _i5.Future<_i3.DocumentDetails> getDocument(_i3.DocumentId? documentId) =>
      (super.noSuchMethod(Invocation.method(#getDocument, [documentId]),
              returnValue:
                  Future<_i3.DocumentDetails>.value(_FakeDocumentDetails_2()))
          as _i5.Future<_i3.DocumentDetails>);
  @override
  _i5.Future<_i3.Document> editDescription(_i3.DocumentId? documentId,
          _i3.EditDescriptionDocumentRequest? request) =>
      (super.noSuchMethod(
              Invocation.method(#editDescription, [documentId, request]),
              returnValue: Future<_i3.Document>.value(_FakeDocument_1()))
          as _i5.Future<_i3.Document>);
  @override
  _i5.Future<_i3.Document?> getDocumentOffline(_i3.DocumentId? documentId) =>
      (super.noSuchMethod(Invocation.method(#getDocumentOffline, [documentId]),
              returnValue: Future<_i3.Document?>.value())
          as _i5.Future<_i3.Document?>);
  @override
  _i5.Future<bool> updateDocumentOffline(
          _i3.Document? document, String? localPath) =>
      (super.noSuchMethod(
          Invocation.method(#updateDocumentOffline, [document, localPath]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<bool> makeAvailableOffline(
          _i3.Document? document, String? localPath) =>
      (super.noSuchMethod(
          Invocation.method(#makeAvailableOffline, [document, localPath]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<bool> disableAvailableOffline(
          _i3.DocumentId? documentId, String? localPath) =>
      (super.noSuchMethod(
          Invocation.method(#disableAvailableOffline, [documentId, localPath]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<List<_i3.Document>> getAllDocumentOffline() =>
      (super.noSuchMethod(Invocation.method(#getAllDocumentOffline, []),
              returnValue: Future<List<_i3.Document>>.value(<_i3.Document>[]))
          as _i5.Future<List<_i3.Document>>);
  @override
  _i5.Future<String> downloadMakeOfflineDocument(
          _i3.DocumentId? documentId,
          String? documentName,
          _i3.DownloadPreviewType? downloadPreviewType,
          _i4.Token? permanentToken,
          Uri? baseUrl) =>
      (super.noSuchMethod(
          Invocation.method(#downloadMakeOfflineDocument, [
            documentId,
            documentName,
            downloadPreviewType,
            permanentToken,
            baseUrl
          ]),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  _i5.Future<bool> deleteAllData() =>
      (super.noSuchMethod(Invocation.method(#deleteAllData, []),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
}

/// A class which mocks [TokenRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTokenRepository extends _i1.Mock implements _i3.TokenRepository {
  MockTokenRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<dynamic> persistToken(_i4.Token? token) =>
      (super.noSuchMethod(Invocation.method(#persistToken, [token]),
          returnValue: Future<dynamic>.value()) as _i5.Future<dynamic>);
  @override
  _i5.Future<dynamic> removeToken() =>
      (super.noSuchMethod(Invocation.method(#removeToken, []),
          returnValue: Future<dynamic>.value()) as _i5.Future<dynamic>);
  @override
  _i5.Future<_i4.Token> getToken() =>
      (super.noSuchMethod(Invocation.method(#getToken, []),
              returnValue: Future<_i4.Token>.value(_FakeToken_3()))
          as _i5.Future<_i4.Token>);
}

/// A class which mocks [CredentialRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCredentialRepository extends _i1.Mock
    implements _i3.CredentialRepository {
  MockCredentialRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<dynamic> saveBaseUrl(Uri? baseUrl) =>
      (super.noSuchMethod(Invocation.method(#saveBaseUrl, [baseUrl]),
          returnValue: Future<dynamic>.value()) as _i5.Future<dynamic>);
  @override
  _i5.Future<dynamic> removeBaseUrl() =>
      (super.noSuchMethod(Invocation.method(#removeBaseUrl, []),
          returnValue: Future<dynamic>.value()) as _i5.Future<dynamic>);
  @override
  _i5.Future<Uri> getBaseUrl() =>
      (super.noSuchMethod(Invocation.method(#getBaseUrl, []),
          returnValue: Future<Uri>.value(_FakeUri_4())) as _i5.Future<Uri>);
}
