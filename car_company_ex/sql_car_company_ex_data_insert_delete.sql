USE db_car_company_ex;

-- Company Title 테이블에 데이터 삽입
INSERT INTO `Company Title` (`COMPANY_PK`, `COMPANY_NAME`) VALUES
('COMPANY_01', '현대'),
('COMPANY_02', '기아'),
('COMPANY_03', '쉐보레'),
('COMPANY_04', 'BMW'),
('COMPANY_05', '벤츠');

-- CarInfo 테이블에 데이터 삽입
INSERT INTO `CarInfo` (`CAR_PK`, `COMPANY_NAME`, `YEAR`, `CAR_NAME`) VALUES
('CAR_01', 'COMPANY_01', '2021', '소나타'),
('CAR_02', 'COMPANY_02', '2020', '쏘렌토'),
('CAR_03', 'COMPANY_03', '2019', '카마로'),
('CAR_04', 'COMPANY_04', '2018', '3시리즈'),
('CAR_05', 'COMPANY_05', '2017', 'E클래스');

-- Car Option 테이블에 데이터 삽입
INSERT INTO `Car Option` (`COMPANY_FK`, `CAR_FK`, `OPTION_PK`) VALUES
('COMPANY_01', 'CAR_01', '네비게이션'),
('COMPANY_01', 'CAR_01', '후방카메라'),
('COMPANY_02', 'CAR_02', '가죽시트'),
('COMPANY_02', 'CAR_02', '스마트키'),
('COMPANY_03', 'CAR_03', '크루즈컨트롤'),
('COMPANY_03', 'CAR_03', '블루투스'),
('COMPANY_04', 'CAR_04', '후방감지센서'),
('COMPANY_04', 'CAR_04', '헤드업디스플레이'),
('COMPANY_05', 'CAR_05', '전자식메모리시트'),
('COMPANY_05', 'CAR_05', '어댑티브크루즈컨트롤');


