package com.pets.service;

import java.sql.SQLException;

import com.pets.dao.PetDao;
import com.pets.domain.Pet;
import com.pets.pager.PageBean;

public class PetService {

	private PetDao petDao = new PetDao();
	
	/**
	 * 删除
	 * @param bid
	 */
	public void delete(String bid) {
		try {
			petDao.delete(bid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 修改
	 * @param pet
	 */
	public void edit(Pet pet) {
		try {
			petDao.edit(pet);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 返回当前分类下个数
	 * @param cid
	 * @return
	 */
	public int findPetCountByCategory(String cid) {
		try {
			return petDao.findPetCountByCategory(cid);
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
//	加载
	public Pet load(String bid) {
		try {
			return petDao.findByBid(bid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
//	按分类查
	public PageBean<Pet> findByCategory(String cid, int pc) {
		try {
			return petDao.findByCategory(cid, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
//	 按名称查 
	public PageBean<Pet> findByBname(String bname, int pc) {
		try {
			return petDao.findByBname(bname, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 添加
	 *
	 */
	public void add(Pet pet) {
		try {
			petDao.add(pet);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
