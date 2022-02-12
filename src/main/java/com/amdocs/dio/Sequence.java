package com.amdocs.dio;

import java.util.ArrayList;
import java.util.List;

public class Sequence {
	private Renderer renderer;
	
	public Sequence(Renderer renderer){
		this.renderer = renderer;
	}
	
	public List<String > generate(int length){
		List<String> list = new ArrayList<String>(length);
		for(int i = 1; i <= length; i++) {
			list.add(renderer.render(i));
		}
		return list;
		
	}
}
