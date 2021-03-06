package com.linrry.auth.zuul.sys.api.controller;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.linrry.auth.zuul.common.Result;
import com.linrry.auth.zuul.common.controller.CrudController;
import com.linrry.auth.zuul.sys.api.entity.Role;
import com.linrry.auth.zuul.sys.api.service.IRoleApiruleService;
import com.linrry.auth.zuul.sys.api.service.IRoleMenuService;
import com.linrry.auth.zuul.sys.api.service.IRoleService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author linrry
 * @since 2018-05-09
 */
@RestController
@RequestMapping("/sys/role")
public class RoleController extends CrudController<Role,IRoleService> {

    @Autowired
    private IRoleService roleService;

    @Autowired
    private IRoleMenuService roleMenuService;

    @Autowired
    private IRoleApiruleService roleApiruleService;


    @ResponseBody
    @RequestMapping("/page")
    public Result page(
            @RequestParam(required = true, defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer limit, String roleName) {

        Result result = Result.ok();
        EntityWrapper<Role> ew = new EntityWrapper<Role>();
        if (StringUtils.isNotBlank(roleName)) {
            ew.like("roleName", roleName);
        }
        Page<Role> pageData = roleService.selectPage(new Page<Role>(page, limit), ew);
        result.setData(pageData.getRecords()).setCount(pageData.getTotal());
        return  result;

    }

    /**
     * 分配功能权限
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/auth")
    public Result auth(String id){
        Result result = Result.ok();
        List<Map<String, Object>> menuList =  roleMenuService.selectAuthByRoleId(id);
        result.setData(menuList);
        return result;
    }

    /**
     * 分配功能权限
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/dataauth")
    public Result dataauth(String id){
        Result result = Result.ok();
        List<Map<String, Object>> dataAuthList =  roleApiruleService.selectDataAuthByRoleId(id);
        result.setData(dataAuthList);
        return result;
    }

    /**
     * 增加角色菜单
     * @param roleId
     * @param menuIds
     * @return
     */
    @ResponseBody
    @RequestMapping("/addRoleMenu")
    public Result addRoleMenu(String roleId,String menuIds){
        Result result = Result.ok();
        roleMenuService.addRoleMenu(roleId,menuIds);
        return result;
    }

    /**
     * 增加角色菜单
     * @param roleId
     * @param apiruleIds
     * @return
     */
    @ResponseBody
    @RequestMapping("/addRoleApirule")
    public Result addRoleApirule(String roleId,String apiruleIds){
        Result result = Result.ok();

        roleApiruleService.addRoleApirule(roleId,apiruleIds);
        return result;
    }

}