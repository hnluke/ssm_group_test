package com.service.impl;

import com.dao.UserDaoMapper;
import com.model.pojo.Users;
import com.service.IUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsersServiceImpl implements IUsersService {
    @Autowired
    private UserDaoMapper userDaoMapper;
    @Override
    public boolean verify(String userName, String userPwd) {
        boolean flag = false;
        Users users= userDaoMapper.findUserByName(userName);
        if(users != null) {
            if(userPwd.equals(users.getUserPwd())) {
                flag = true;
            }
        }
        return flag;
    }
}
