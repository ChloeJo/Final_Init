package kh.init.alarm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AlarmDAO {
	
	@Autowired
	private SqlSessionTemplate jdbc;
	
	// 댓글 알림
	public int alarmReply(int sharedSeq, String email) {
		Map<String, Object> prm = new HashMap<>();
		prm.put("shardSeq",sharedSeq);
		prm.put("email",email);
		return jdbc.insert("Alarm.alarmReply",prm);
	}
	
	// 좋아요 알림
	public int alarmLike(int sharedSeq, String email) {
		Map<String, Object> prm = new HashMap<>();
		prm.put("shardSeq",sharedSeq);
		prm.put("email",email);
		return jdbc.insert("Alarm.alarmLike",prm);
	}
	
	// 친구 요청 알림
	public int alarmFriend(int sharedSeq, String email) {
		Map<String, Object> prm = new HashMap<>();
		prm.put("shardSeq",sharedSeq);
		prm.put("email",email);
		return jdbc.insert("Alarm.alarmFriend",prm);
	}
	
	// 알림 목록
	public List<AlarmDTO> alarmList(String email){
		Map<String, Object> prm = new HashMap<>();
		prm.put("email",email);
		return jdbc.selectList("Alarm.alarmList",prm);
	}
	
	// 읽음 완료로 표시 변경
	public int alarmCheck(String email) {
		Map<String, Object> prm = new HashMap<>();
		prm.put("email",email);
		return jdbc.update("Alarm.alarmCheck", prm);
	}
	
	// 알림 삭제
	public int deleteAlarm(String email, int alarm_seq) {
		Map<String, Object> prm = new HashMap<>();
		prm.put("email",email);
		prm.put("alarm_seq",alarm_seq);
		return jdbc.update("Alarm.alarmCheck", prm);
	}
	
	

}
