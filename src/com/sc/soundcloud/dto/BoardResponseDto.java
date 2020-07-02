package com.sc.soundcloud.dto;

import com.sc.soundcloud.model.Board;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardResponseDto {
	private Board board;
	private String userProfile;
}
