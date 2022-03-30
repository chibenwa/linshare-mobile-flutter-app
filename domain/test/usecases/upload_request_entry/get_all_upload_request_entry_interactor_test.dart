// LinShare is an open source filesharing software, part of the LinPKI software
// suite, developed by Linagora.
//
// Copyright (C) 2020 LINAGORA
//
// This program is free software: you can redistribute it and/or modify it under the
// terms of the GNU Affero General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later version,
// provided you comply with the Additional Terms applicable for LinShare software by
// Linagora pursuant to Section 7 of the GNU Affero General Public License,
// subsections (b), (c), and (e), pursuant to which you must notably (i) retain the
// display in the interface of the “LinShare™” trademark/logo, the "Libre & Free" mention,
// the words “You are using the Free and Open Source version of LinShare™, powered by
// Linagora © 2009–2020. Contribute to Linshare R&D by subscribing to an Enterprise
// offer!”. You must also retain the latter notice in all asynchronous messages such as
// e-mails sent with the Program, (ii) retain all hypertext links between LinShare and
// http://www.linshare.org, between linagora.com and Linagora, and (iii) refrain from
// infringing Linagora intellectual property rights over its trademarks and commercial
// brands. Other Additional Terms apply, see
// <http://www.linshare.org/licenses/LinShare-License_AfferoGPL-v3.pdf>
// for more details.
// This program is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
// more details.
// You should have received a copy of the GNU Affero General Public License and its
// applicable Additional Terms for LinShare along with this program. If not, see
// <http://www.gnu.org/licenses/> for the GNU Affero General Public License version
//  3 and <http://www.linshare.org/licenses/LinShare-License_AfferoGPL-v3.pdf> for
//  the Additional Terms applicable to LinShare software.
//

import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:testshared/fixture/upload_request_entry_fixture.dart';
import 'package:testshared/fixture/upload_request_fixture.dart';

import 'get_all_upload_request_entry_interactor_test.mocks.dart';

@GenerateMocks([UploadRequestEntryRepository])
void main() {
  group('get_all_upload_request_entry_interactor_test', () {
    late MockUploadRequestEntryRepository uploadRequestEntryRepository;
    late GetAllUploadRequestEntriesInteractor getAllUploadRequestEntriesInteractor;

    setUp(() {
      uploadRequestEntryRepository = MockUploadRequestEntryRepository();
      getAllUploadRequestEntriesInteractor = GetAllUploadRequestEntriesInteractor(uploadRequestEntryRepository);
    });

    test('getAllUploadRequestEntriesInteractor should return success with upload request list', () async {
      when(uploadRequestEntryRepository.getAllUploadRequestEntries(uploadRequestId1)).thenAnswer((_) async => [uploadRequestEntry1]);

      final result = await getAllUploadRequestEntriesInteractor.execute(uploadRequestId1);

      final uploadRequestEntriesList = result.map((success) => (success as UploadRequestEntryViewState).uploadRequestEntries)
          .getOrElse(() => []);

      expect(
          uploadRequestEntriesList,
          containsAllInOrder([uploadRequestEntry1]));
    });

    test('getAllUploadRequestEntriesInteractor should fail when get all failed', () async {
      final exception = Exception();

      when(uploadRequestEntryRepository.getAllUploadRequestEntries(uploadRequestIdWrong1)).thenThrow(exception);

      final result = await getAllUploadRequestEntriesInteractor.execute(uploadRequestIdWrong1);

      result.fold(
        (failure) => expect(failure, isA<UploadRequestEntryFailure>()),
        (success) => expect(success, isA<UploadRequestEntryViewState>()));

      expect(result, Left<Failure, Success>(UploadRequestEntryFailure(exception)));
    });

  });
}
