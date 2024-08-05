INSERT INTO `NOTICE` (`Notice_PK`, `CONTENT`, `WRITER`) VALUES
('N001', 'Welcome to the notice board', 'W001'),
('N002', 'Meeting on Friday', 'W002'),
('N003', 'Holiday Schedule', 'W003');

INSERT INTO `VISITORS` (`VISITOR_PK`, `NOTICE_FK`, `VISITOR_NAME`) VALUES
('V001', 'N001', 'John Doe'),
('V002', 'N001', 'Jane Smith'),
('V003', 'N002', 'Alice Johnson'),
('V004', 'N003', 'Bob Brown'),
('V005', 'N003', 'Charlie Davis');

INSERT INTO `WRITERS` (`WRITER_PK`, `Field`) VALUES
('W001', 'Admin'),
('W002', 'HR'),
('W003', 'Management');
