package com.kh.diamelo.controller;

import com.kh.diamelo.domain.vo.UserInfo;
import com.kh.diamelo.services.MemberService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberController {

    private final MemberService memberService;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    public MemberController(MemberService memberService, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.memberService = memberService;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    // 로그아웃시 logoutSuccess로 리다이렉트
    @GetMapping("logout.me")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/logoutSuccess.me";
    }

    // 로그아웃 로직
    @GetMapping("logoutSuccess.me")
    public String logoutSuccess(HttpServletResponse response) {
        // 브라우저 캐시 방지 코드 추가
        //  1.	로그아웃 시도
        //	•	/logout.me 요청 → 세션 제거(session.invalidate()).
        //	•	이후 redirect:/logoutSuccess.me로 리다이렉트.
        //	2.	/logoutSuccess.me 진입
        //	•	여기서 응답 헤더에 캐시 금지 설정을 해 줌.
        //	•	이후 로그인 폼으로 다시 리다이렉트.
        //	3.	브라우저 뒤로가기 누름
        //	•	브라우저는 보통 이전 페이지를 캐시된 HTML로 보여주려 함.
        //	•	하지만 캐시가 금지돼 있어서, 다시 서버로 요청을 보냄.
        //	4.	서버 요청 → 인터셉터 작동
        //	•	세션에는 loginUser가 없으므로 → 인터셉터에서 막힘.
        //	•	결국 다시 로그인 페이지로 보내짐.

        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        return "redirect:/loginForm.me";
    }


    // 회원가입 로직
    @PostMapping("signUp.me")
    public String insertMember(UserInfo userInfo, HttpSession session, Model model) {
         /*
            비밀번호를 사용자 입력 그대로 저장한다.(평문)
            Bcrypt방식을 이용해서 암호화작업 후 저장함
            -> 스프링 시큐리티에서 제공하는 모듈을 이용 (pom.xml에 라이브러리 추가 후 빈에 객체등록)
         */

        // 암호화
        String pwd = bCryptPasswordEncoder.encode(userInfo.getUserPwd());
        userInfo.setUserPwd(pwd);

        int result = memberService.insertMember(userInfo);

        if (result > 0) {
            session.setAttribute("alertMsg", "성공적으로 회원가입을 완료되었습니다. 관리자에게 문의 후 로그인 하세요.");
            return "redirect:/loginForm.me";
        } else {
            model.addAttribute("errorMsg", "회원가입 실패");
            return "common/errorPage";
        }
    }

    // 로그인 로직
    @PostMapping("login.me")
    public String login(UserInfo userInfo, HttpSession session, Model model) {
        UserInfo loginMember = memberService.loginMember(userInfo.getUserId());

        // loginMember의 userPwd --> 암호화된 userPwd
        // UserInfo의 userPwd --> 암호화 전의 userPwd(평문)

        // bCryptPasswordEncoder.matches(평문,암호문) -> 해당 비밀번호가 암호화된 비밀번호와 일치하면 true 아니면 false반환

        if (loginMember == null) {
            session.setAttribute("errorMsg", "아이디를 찾을 수 없습니다.");
            return ("common/errorPage");
        } else if (!bCryptPasswordEncoder.matches(userInfo.getUserPwd(), loginMember.getUserPwd())) {
            model.addAttribute("errorMsg", "비밀번호가 일치하지 않습니다.");
            return ("common/errorPage");
        } else {
            session.setAttribute("loginUser", loginMember);
            return "redirect:/";
        }
    }

    // MyPage 들어가기 전 비밀번호 확인 페이지
    @GetMapping("myPageForm.me")
    public String myPage() {
        return "myPage/myPage";
    }

    // MyPage 비밀번호 확인 로직
    @PostMapping("myPageCheckPw.me")
    public String myPageCheckPw(UserInfo userInfo, HttpSession session, Model model) {
        UserInfo loginMember = (UserInfo) session.getAttribute("loginUser");

        // loginMember의 userPwd --> 암호화된 userPwd
        // UserInfo의 userPwd --> 암호화 전의 userPwd(평문)

        // bCryptPasswordEncoder.matches(평문,암호문) -> 해당 비밀번호가 암호화된 비밀번호와 일치하면 true 아니면 false반환
        if (loginMember == null) {
            session.setAttribute("errorMsg", "회원 정보가 만료되었습니다. 다시 로그인 해주세요");
            return ("common/errorPage");
        } else if (!bCryptPasswordEncoder.matches(userInfo.getUserPwd(), loginMember.getUserPwd())) {
            model.addAttribute("errorMsg", "비밀번호가 일치하지 않습니다.");
            return ("common/errorPage");
        } else {
            session.setAttribute("loginUser", loginMember);
            return "redirect:/myPageDetail.me";
        }
    }

    // MyPage - 정보 변경 및 회원탈퇴 선택 화면
    @GetMapping("myPageDetail.me")
    public String myPageDetail() {
        return "myPage/updateMyPage";
    }

    // 개인정보 변경 페이지
    @GetMapping("updateEnrollForm.me")
    public String updateEnrollForm() {
        return "myPage/updateMy";
    }


    // 개인정보 변경시 정보 변경 수행 후 updateSucces.me로 리다이렉트
    @PostMapping("upDate.me")
    public String upDateMember(UserInfo userInfo, HttpSession session, Model model) {
        int result = memberService.upDateMember(userInfo);

        if (result > 0) {
            session.setAttribute("alertMsg", "개인정보 변경이 완료되었습니다. 다시 로그인 해주세요.");
            return "redirect:/updateSuccess.me";
        } else {
            model.addAttribute("errorMsg", "개인정보 변경에 실패하였습니다.");
            return "common/errorPage";
        }
    }

    // 개인정보 변경시 alertMsg 띄우고 login 화면으로 리다이렉트
    // 이렇게 하지 않으면 뒤로가기 캐시가 없어지지 않음
    @GetMapping("updateSuccess.me")
    public String updateSuccess(HttpSession session, HttpServletResponse response, HttpServletRequest request) {
        // 메세지 가져오기
        String alertMsg = (String) session.getAttribute("alertMsg");
        // 세션 삭제
        session.invalidate();

        // 세션 생성
        session = request.getSession(true);

        //세션에 메세지 담기
        session.setAttribute("alertMsg", alertMsg);

        // 브라우저 캐시 방지
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        return "redirect:/loginForm.me";
    }

}
