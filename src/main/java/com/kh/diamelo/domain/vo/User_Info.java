package com.kh.diamelo.domain.vo;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@ToString
@NoArgsConstructor
public class User_Info {
<<<<<<< HEAD
    private String user_Id; //아이디
    private String job_Code; //직급 코드 (J1 ~ J6, 거래처는 J0)
    private String dept_Code; //부서 코드 (D1 ~ D5, 거래처는 D0)
    private String user_Pwd; //비밀번호
    private String company_Name; //기업명
    private String user_Name; //이름
    private String phone; //전화번호
    private String email; //이메일
    private String enroll_Date; //가입일
    private String modify_Date; //수정일
    private String status; //승인 상태값(Y / N)
    private String user_Profile; //프로필 경로
=======
    private String userId; //아이디
    private String jobCode; //직급 코드 (J1 ~ J6, 거래처는 J0)
    private String deptCode; //부서 코드 (D1 ~ D5, 거래처는 D0)
    private String userPwd; //비밀번호
    private String companyName; //기업명
    private String userName; //이름
    private String phone; //전화번호
    private String email; //이메일
    private String enrollDate; //가입일
    private String modifyDate; //수정일
    private String status; //승인 상태값(Y / N)
    private String userProfile; //프로필 경로
>>>>>>> e6ade325249dd104432e510b94c3200068a26bca
}
