package com.tp.yogioteur.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tp.yogioteur.domain.ImageDTO;
import com.tp.yogioteur.domain.RoomDTO;

@Mapper
public interface RoomMapper {
	
	public int insertRoom(RoomDTO room);
	public int insertImage(ImageDTO image);
	

	//객실조회	
	public List<RoomDTO> checkInRoomList();
	
	//이미지 보여주기
	public ImageDTO selectImageByNo(Long roomNo);
	
}
