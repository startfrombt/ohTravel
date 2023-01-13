CREATE DEFINER=`travel`@`%` PROCEDURE `pro_mem_membership_update`(
   in p_mem_id varchar(30),
    out result int
)
BEGIN
   declare v_membership_id int;   # 회원의 마일리지 등급
    declare v_mem_mile int;   # 회원의 마일리지
    declare v_update_membership_id int; # 변경될 마일리지 등급
   declare v_result int default 0; # 결과를 보낼 변수
    
    # 회원의 마일리지, 마일리지 등급 가져오기
   select membership_id, mem_mile 
    into v_membership_id, v_mem_mile 
    from mem_membership where mem_id = p_mem_id;
    
    # 회원의 마일리지 등급과 비교할 마일리지 등급 가져오기
    select membership_id into v_update_membership_id from membership  
   where membership_mile = (select max(ms.membership_mile) 
   from (SELECT * FROM membership where membership_mile <= v_mem_mile) ms);
    
    # 비교하여 만약 소유한 마일리지가 높아져 서로 달라지면 마일리지 등급 update
    if v_membership_id != v_update_membership_id then
      update mem_membership 
        set membership_id = v_update_membership_id
        where mem_id = p_mem_id;
        
        set v_result = 1;
   end if;
    
    set result = v_result;
END